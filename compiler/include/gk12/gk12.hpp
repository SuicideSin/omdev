//GK12 Graphics Header
//	Created By:		Mike Moss
//	Modified On:	02/22/2013

//This requires GLEW and GLUT to work!

//Begin Define Guards
#ifndef GK12_H
#define GK12_H

//2D Graphics Header
#include <msl/2d.hpp>

//Math Header
#include <cmath>

//Serial Header
#include <msl/serial.hpp>

//Serial Sync Header
#include <msl/serial_sync.hpp>

//String Header
#include <string>

//MSL Namespace
using namespace msl;

//STD Namespace
using namespace std;

//Function Declarations
void setup();
void loop(const double dt);
void draw();

//External Variables
extern std::string window_title;
extern msl::color background_color;
extern int display_width;
extern int display_height;

//Student Friendly Cos Function
double cosd(const double degrees);

//Student Friendly Sin Function
double sind(const double degrees);

//End Define Guards
#endif
