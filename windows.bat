@echo off
cd compiler/compile_scripts

if exist "builds\windows" (
	cd ../jedit
	start jedit.jar -settings=settings
	cd ../../
) else (
	rmdir /S /Q builds
	echo OMDev is doing some initial setup stuff to make compilations faster, this may take a minute or so!
	windows_startup.bat
	copy /y nul "windows"
	cd ../../jedit && start jedit.jar -settings=settings
	cd ../../
)