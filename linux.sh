#!/bin/sh

cd compiler/compile_scripts

if [ ! -r builds/linux ]
then
	rm -rf builds
	xmessage -center -print "OMDev is doing some initial setup stuff to make compilations faster, this may take a minute or so!" &
	./linux_startup.sh
	touch builds/linux
fi

cd ../jedit
./jedit.jar -settings=settings