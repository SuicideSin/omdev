@echo off
set CPP_COMPILER=%2\..\..\mingw\bin\g++.exe
set SRC=%4
set OBJECT_FILES=%2\*.o
set LIB=-lfreetype -lglu32 -lopengl32 -lwsock32 -lglaux -lgdi32 -lwinmm -lpthread
set CFLAGS=-static -fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format -O -static -mwindows -DGLEW_BUILD -DGLEW_STATIC -DFREEGLUT_BUILD -DFREEGLUT_STATIC
set INCLUDES=-I%3 -I%3/ftgl -I%3/gk12 -I%3/glui -I%3/glut
set OUT=-o %5

%CPP_COMPILER% %SRC% %OBJECT_FILES% %LIB% %CFLAGS% %INCLUDES% %OUT% 2> %1


rem rm -f builds/* && ./linux_startup.sh
rem ./linux.sh blah.txt builds ../include ~/programming/other/omdev\ testing/test.cpp blah.exe && ./blah.exe