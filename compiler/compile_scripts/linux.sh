i=1

for args in "$@"; do
	arg[$i]="$args"
	((i++))
done

#CPP_COMPILER="g++"
#SRC="${arg[4]}"
#OBJECT_FILES="${arg[2]}/*.o"
#LIB="-lGL -lGLU -lX11"
#CFLAGS="-fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format -O"
#INCLUDES=-I"${arg[3]}" -I"${arg[3]}/gk12" -I"${arg[3]}/glut"
#OUT=-o "${arg[5]}"

g++ "${arg[4]}" "${arg[2]}"/*.o -lfreetype -lGL -lGLU -lX11 -fpermissive -w -Wno-write-strings -Wno-unused-result -Wno-format \
-O -I"${arg[3]}" -I"${arg[3]}/ftgl" -I"${arg[3]}/gk12" -I"${arg[3]}/glut" -o "${arg[5]}"
# 2> "${arg[1]}"