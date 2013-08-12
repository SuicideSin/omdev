C_COMPILER="gcc"
CPP_COMPILER="g++"
GK12="../../include/gk12/gk12.cpp"
GLEW="../../include/glew/glew.c"
GLUI="../../include/glui/*.cpp"
GLUT="../../include/glut/*.c"
MSL="../../include/msl/2d.cpp ../../include/msl/2d_util.cpp ../../include/msl/file_util.cpp ../../include/msl/font.cpp ../../include/msl/glut_ui.cpp ../../include/msl/glut_input.cpp ../../include/msl/json.cpp ../../include/msl/serial.cpp ../../include/msl/serial_sync.cpp ../../include/msl/serial_util.cpp ../../include/msl/socket.cpp ../../include/msl/socket_util.cpp ../../include/msl/sprite.cpp ../../include/msl/string_util.cpp ../../include/msl/time_util.cpp ../../include/msl/webserver.cpp"
SOIL="../../include/SOIL/*.c"
LIB="-lGL -lGLU -lX11"
CFLAGS="-fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format -O"
INCLUDES="-I../../include -I../../include/gk12 -I../../include/glut"

mkdir -p builds &&
cd builds &&
${C_COMPILER} ${GLEW} ${GLUI} ${GLUT} ${CFLAGS} -c ${LIB} ${INCLUDES} &&
${CPP_COMPILER} ${GK12} ${MSL} ${SOIL} ${CFLAGS} -c ${LIB} ${INCLUDES}