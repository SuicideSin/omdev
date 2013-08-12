C_COMPILER="gcc"
CPP_COMPILER="g++"
SRC="$1"
OBJECT_FILES="builds/*.o"
LIB="-lGL -lGLU -lX11"
CFLAGS="-fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format -O"
INCLUDES="-I../include -I../include/gk12 -I../include/glut"
OUT="-o $2"

${CPP_COMPILER} ${SRC} ${OBJECT_FILES} ${LIB} ${CFLAGS} ${INCLUDES} ${OUT}