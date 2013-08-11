COMPILER="g++"
SRC="$1"
GK12="../include/gk12/gk12.cpp"
GLEW="../include/glew/glew.c"
GLUI="../include/glui/*.cpp"
GLUT="../include/glut/*.c"
MSL="../include/msl/2d.cpp ../include/msl/2d_util.cpp ../include/msl/file_util.cpp ../include/msl/font.cpp ../include/msl/glut_ui.cpp ../include/msl/glut_input.cpp ../include/msl/json.cpp ../include/msl/serial.cpp ../include/msl/serial_sync.cpp ../include/msl/serial_util.cpp ../include/msl/socket.cpp ../include/msl/socket_util.cpp ../include/msl/sprite.cpp ../include/msl/string_util.cpp ../include/msl/time_util.cpp ../include/msl/webserver.cpp"
SOIL="../include/SOIL/*.c"
LIB="-lGL -lGLU"
CFLAGS="-fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format -O"
INCLUDES="-I../include -I../include/gk12 -I../include/glut"
OUT="-o $2"

${COMPILER} ${SRC} ${GK12} ${GLEW} ${GLUI} ${GLUT} ${MSL} ${SOIL} ${LIB} ${CFLAGS} ${INCLUDES} ${OUT} /usr/lib/x86_64-linux-gnu/libX11.so.6