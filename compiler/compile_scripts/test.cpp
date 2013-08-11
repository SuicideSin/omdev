#include <gk12.hpp>

string window_title="Move!";
color background_color(0.5,0.5,0.5);
int display_width=320;
int display_height=240;


void setup()
{
}

void loop(const double dt)
{
}

void draw()
{
	static sprite test("test.bmp");
	test.draw(0,0);
}