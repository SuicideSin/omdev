set C_COMPILER="../mingw/bin/gcc.exe"
set CPP_COMPILER="../mingw/bin/g++.exe"
set GK12="../../include/gk12/gk12.cpp"
set GLEW="../../include/glew/glew.c"
set GLUI="../../include/glui/*.cpp"
set GLUT="../../include/glut/*.c"
set MSL="../../include/msl/2d.cpp ../../include/msl/2d_util.cpp ../../include/msl/file_util.cpp ../../include/msl/font.cpp ../../include/msl/glut_ui.cpp ../../include/msl/glut_input.cpp ../../include/msl/json.cpp ../../include/msl/serial.cpp ../../include/msl/serial_sync.cpp ../../include/msl/serial_util.cpp ../../include/msl/socket.cpp ../../include/msl/socket_util.cpp ../../include/msl/sprite.cpp ../../include/msl/string_util.cpp ../../include/msl/time_util.cpp ../../include/msl/webserver.cpp"
set SOIL="../../include/SOIL/*.c"
set LIB="-lGL -lGLU"
set CFLAGS="-fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format -O"
set INCLUDES="-I../../include -I../../include/gk12 -I../../include/glut"

mkdir builds
cd builds
%C_COMPILER% %GLEW% %GLUI% %GLUT% %CFLAGS% -c %LIB% %INCLUDES%
%CPP_COMPILER% %GK12% %MSL% %SOIL% %CFLAGS% -c %LIB% %INCLUDES%