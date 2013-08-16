@echo off
set C_COMPILER="%CD%\..\mingw\bin\gcc.exe"
set CPP_COMPILER="%CD%\..\mingw\bin\g++.exe"
set GK12="..\..\include\gk12\gk12.cpp"
set GLEW="..\..\include\glew\*.c"
set GLUI="..\..\include\glui\*.cpp"
set GLUT="..\..\include\glut\*.c"
set MSL=..\..\include\msl\2d.cpp ..\..\include\msl\2d_util.cpp ..\..\include\msl\file_util.cpp ..\..\include\msl\font.cpp ..\..\include\msl\glut_ui.cpp ..\..\include\msl\glut_input.cpp ..\..\include\msl\json.cpp ..\..\include\msl\serial.cpp ..\..\include\msl\serial_sync.cpp ..\..\include\msl\serial_util.cpp ..\..\include\msl\socket.cpp ..\..\include\msl\socket_util.cpp ..\..\include\msl\sprite.cpp ..\..\include\msl\string_util.cpp ..\..\include\msl\time_util.cpp ..\..\include\msl\webserver.cpp
set SOIL="..\..\include\SOIL\*.c"
set LIB=-lglu32 -lopengl32 -lwsock32 -lglaux -lgdi32 -lwinmm -lpthread
set CFLAGS=-c -static -fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format -O -static -mwindows -DGLEW_BUILD -DGLEW_STATIC -DFREEGLUT_BUILD -DFREEGLUT_STATIC
set INCLUDES=-I..\..\include -I..\..\include\gk12

mkdir builds
cd builds

%C_COMPILER% %LIB% %GLUT% %CFLAGS% %INCLUDES%
%CPP_COMPILER% %LIB% %GK12% %GLEW% %GLUI% %MSL% %SOIL% %CFLAGS% %INCLUDES%