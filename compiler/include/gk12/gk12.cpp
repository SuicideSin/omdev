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

//GLUI Source Files
/*#include <glui/algebra3.cpp>
#include <glui/arcball.cpp>
#include <glui/glui.cpp>
#include <glui/glui_add_controls.cpp>
#include <glui/glui_bitmaps.cpp>
#include <glui/glui_bitmap_img_data.cpp>
#include <glui/glui_button.cpp>
#include <glui/glui_checkbox.cpp>
#include <glui/glui_column.cpp>
#include <glui/glui_commandline.cpp>
#include <glui/glui_control.cpp>
#include <glui/glui_edittext.cpp>
#include <glui/glui_filebrowser.cpp>
#include <glui/glui_list.cpp>
#include <glui/glui_listbox.cpp>
#include <glui/glui_mouse_iaction.cpp>
#include <glui/glui_node.cpp>
#include <glui/glui_panel.cpp>
#include <glui/glui_radio.cpp>
#include <glui/glui_rollout.cpp>
#include <glui/glui_rotation.cpp>
#include <glui/glui_scrollbar.cpp>
#include <glui/glui_separator.cpp>
#include <glui/glui_spinner.cpp>
#include <glui/glui_statictext.cpp>
#include <glui/glui_string.cpp>
#include <glui/glui_textbox.cpp>
#include <glui/glui_translation.cpp>
#include <glui/glui_tree.cpp>
#include <glui/glui_treepanel.cpp>
#include <glui/glui_window.cpp>
#include <glui/quaternion.cpp>
#include <glui/viewmodel.cpp>*/

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
		start_2d(window_title,display_width,display_height,true,background_color);
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
