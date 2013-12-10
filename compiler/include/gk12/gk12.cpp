//GK12 Graphics Source
//	Created By:		Mike Moss
//	Modified On:	02/22/2013

//This requires GLEW and GLUT to work!

//Definitions for "gk12.hpp"
#include "gk12.hpp"

//Exception Header
#include <stdexcept>

//IO Stream Header
#include <iostream>

//Student Friendly Cos Function
double cosd(const double degrees)
{
    return cos(degrees*M_PI/180.0);
}

//Student Friendly Sin Function
double sind(const double degrees)
{
    return sin(degrees*M_PI/180.0);
}

//Default Main
int main()
{
	//Try Code
	try
	{
		//Newline for Portable Compiler
		std::cout<<std::endl;

		//Create 2D Engine
		start_2d(window_title,display_width,display_height,false,background_color);
	}

	//Catch Errors
	catch(std::exception& e)
	{
		//Print Error
		std::cout<<"Error!\t"<<e.what()<<std::endl;
	}

	//All Done
	return 0;
}
