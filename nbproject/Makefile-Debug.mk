#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/ArduinoWorker.o \
	${OBJECTDIR}/AsyncSerial.o \
	${OBJECTDIR}/BufferedAsyncSerial.o \
	${OBJECTDIR}/CSVRow.o \
	${OBJECTDIR}/EditRecipeWindow.o \
	${OBJECTDIR}/FrmMain.o \
	${OBJECTDIR}/FrmMainApplication.o \
	${OBJECTDIR}/NewRecipeWindow.o \
	${OBJECTDIR}/ScaleWorker.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-std=c++11 -D_WIN32_WINNT=0x0501 -mwindows -pthread -O0
CXXFLAGS=-std=c++11 -D_WIN32_WINNT=0x0501 -mwindows -pthread -O0

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../../../../../msys64/mingw64/lib `pkg-config --libs gtkmm-3.0`  

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/additive_pumps_windows.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/additive_pumps_windows.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/additive_pumps_windows ${OBJECTFILES} ${LDLIBSOPTIONS} -s -static-libgcc -static-libstdc++ -lwsock32 -lws2_32 -lboost_system -lboost_thread-mt -lboost_chrono-mt

${OBJECTDIR}/ArduinoWorker.o: ArduinoWorker.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ArduinoWorker.o ArduinoWorker.cpp

${OBJECTDIR}/AsyncSerial.o: AsyncSerial.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/AsyncSerial.o AsyncSerial.cpp

${OBJECTDIR}/BufferedAsyncSerial.o: BufferedAsyncSerial.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/BufferedAsyncSerial.o BufferedAsyncSerial.cpp

${OBJECTDIR}/CSVRow.o: CSVRow.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CSVRow.o CSVRow.cpp

${OBJECTDIR}/EditRecipeWindow.o: EditRecipeWindow.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/EditRecipeWindow.o EditRecipeWindow.cpp

${OBJECTDIR}/FrmMain.o: FrmMain.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FrmMain.o FrmMain.cpp

${OBJECTDIR}/FrmMainApplication.o: FrmMainApplication.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/FrmMainApplication.o FrmMainApplication.cpp

${OBJECTDIR}/NewRecipeWindow.o: NewRecipeWindow.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/NewRecipeWindow.o NewRecipeWindow.cpp

${OBJECTDIR}/ScaleWorker.o: ScaleWorker.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/ScaleWorker.o ScaleWorker.cpp

${OBJECTDIR}/main.o: main.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../../../../../msys64/mingw64/include/boost/asio -I../../../../../msys64/mingw64/include/boost/bind -I../../../../../msys64/mingw64/include/boost/thread -I../../../../../msys64/mingw64/include/boost/utility -I../../../../../msys64/mingw64/include/boost/function -I../../../../../msys64/mingw64/include/boost -I../../../../../msys64/mingw64/include/gtkmm-3.0 -I../../../../../msys64/mingw64/include/boost/chrono `pkg-config --cflags gtkmm-3.0`   -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
