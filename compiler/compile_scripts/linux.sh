C_COMPILER="gcc"
CPP_COMPILER="g++"
SRC="$4"
OBJECT_FILES="$2/*.o"
LIB="-lGL -lGLU -lX11"
CFLAGS="-fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format -O"
INCLUDES="-I$3 -I$3/gk12 -I$3/glut"
OUT="-o $5"

${CPP_COMPILER} ${SRC} ${OBJECT_FILES} ${LIB} ${CFLAGS} ${INCLUDES} ${OUT} 2> $1