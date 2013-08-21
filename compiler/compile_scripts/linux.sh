i=1

for args in "$@"; do
  arg[$i]="$args"
  ((i++))
done

CPP_COMPILER="g++"
SRC="${arg[4]}"
OBJECT_FILES="${arg[2]}/*.o"
LIB="-lGL -lGLU -lX11"
CFLAGS="-fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format -O"
INCLUDES="-I${arg[3]} -I${arg[3]}/gk12 -I${arg[3]}/glut"
OUT="${arg[5]}"


${CPP_COMPILER} "${SRC}" ${OBJECT_FILES} ${LIB} ${CFLAGS} ${INCLUDES} -o "${OUT}" 2> ${arg[1]}