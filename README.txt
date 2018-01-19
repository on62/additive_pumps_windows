Pump Controller Project, originally created for use on Linux. Uses gtkmm-3.0 for ui. Uses information from a mettler toledo lab balance to send commands to an arduino, which controls the pumps.

install msys2
follow instructions on this url to get it ready for gtkmm: gtkmm-installation.blogspot.com
run pacman -Ss | boost, and install the boost headers.
find someway to get libboost_system.a library file and put it in msys63/mingw64/lib. This can involve building boost from source, or doing like I did and downloading a mingw distro with boost libraries already compiled, and copy and pasting it from there (I did this on accident).
In netbeans IDE, specify the compiler and make executables: Tools -> Options -> C/C++
After making a project, right click on the project and select properties. Make C++ Compiler -> Include Directories: C:/msys64/mingw64/include. Additional Options: -D_WIN32_WINNT=0x0501
Linker -> Additional Library Directories: C:/msys64/mingw64/lib. Additional Options: -s -lwsock32 -lws2_32 -lboost_system
