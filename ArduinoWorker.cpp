/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include "ArduinoWorker.h"
#include "FrmMain.h"
#include "BufferedAsyncSerial.h"
#include <iostream>
#include <sstream>
#include <chrono>
#include <windows.h>
#include <string.h> // needed for memset
#include <stdlib.h>
#include <stdio.h>

ArduinoWorker::ArduinoWorker() :
  m_Mutex(),
  m_shall_stop(false),
  m_has_stopped(false), 
  m_pump_command("l")      
{   
}

// Accesses to these data are synchronized by a mutex.
// Some microseconds can be saved by getting all data at once, instead of having
// separate get_fraction_done() and get_message() methods.
void ArduinoWorker::set_data(string* pump_command)
{
  boost::lock_guard<boost::mutex> lock(m_Mutex);

  if (pump_command)
    m_pump_command = *pump_command;
}

void ArduinoWorker::do_work(FrmMain* caller)
{    
    // Open serial port
    DWORD baud_rate = 9600;
    BYTE parity = 'N';
    BYTE stop_bits = '1';
    BYTE byte_size = '1';
    LPCSTR portname = "COM4";
    DWORD  accessdirection =GENERIC_READ | GENERIC_WRITE;
    std::cout << "Before open" << std::endl;
    HANDLE hSerial = CreateFile(portname,
        accessdirection,
        0,
        0,
        OPEN_EXISTING,
        0,
        0);
        std::cout << "After open" << std::endl;
    if (hSerial == INVALID_HANDLE_VALUE) {
        //call GetLastError(); to gain more information
    }
    DCB dcbSerialParams = {0};
    dcbSerialParams.DCBlength=sizeof(dcbSerialParams);
    if (!GetCommState(hSerial, &dcbSerialParams)) {
         //could not get the state of the comport
    }
    dcbSerialParams.BaudRate=9600;
    dcbSerialParams.ByteSize=8;
    dcbSerialParams.StopBits=ONESTOPBIT;
    dcbSerialParams.Parity=NOPARITY;
    if(!SetCommState(hSerial, &dcbSerialParams)){
         //analyse error
    }
    COMMTIMEOUTS timeouts={0};
    timeouts.ReadIntervalTimeout=50;
    timeouts.ReadTotalTimeoutConstant=50;
    timeouts.ReadTotalTimeoutMultiplier=10;
    timeouts.WriteTotalTimeoutConstant=50;
    timeouts.WriteTotalTimeoutMultiplier=10;
    if(!SetCommTimeouts(hSerial, &timeouts)){
        //handle error
    }
    //return hSerial;
    const char* message = "";
    {
        boost::lock_guard<boost::mutex> lock(m_Mutex);
        m_has_stopped = false;
    }
    while(TRUE)
    {
        //sleep to give time for serial to buffer and main thread to perform set_data()
        boost::this_thread::sleep_for(boost::chrono::milliseconds(200));
        
        {
            //lock the rest of the activity so that the main thread cannot interfere
            std::cout << "Before open1" << std::endl;

            boost::lock_guard<boost::mutex> lock(m_Mutex);
            DWORD dwBytesRead = 0;
            if(m_shall_stop)
            {
                message = "ll";
                try{
                    WriteFile(hSerial, &message[0], 1, &dwBytesRead, NULL);
                    WriteFile(hSerial, &message[1], 1, &dwBytesRead, NULL);
                }
                catch(boost::system::system_error& e){
                    cout<<"Error: "<<e.what()<<endl;
                }
                break;
            }
            try{
                std::cout << "After open1" << std::endl;
                message = m_pump_command.c_str();
                std::cout << message << std::endl;
                WriteFile(hSerial, &message[0], 1, &dwBytesRead, NULL);
                WriteFile(hSerial, &message[1], 1, &dwBytesRead, NULL);
            }
            catch(std::exception& e){
                    cout<<"Error: "<<e.what()<<endl;
            }
            
        }
    }
    CloseHandle(hSerial);
    {
    boost::lock_guard<boost::mutex> lock(m_Mutex);
    m_shall_stop = false;
    m_has_stopped = true;
    }
    caller->notify(); 
}

void ArduinoWorker::stop_work()
{
  boost::lock_guard<boost::mutex> lock(m_Mutex);
  m_shall_stop = true;
}

bool ArduinoWorker::has_stopped() const
{
  boost::lock_guard<boost::mutex> lock(m_Mutex);
  return m_has_stopped;
}
