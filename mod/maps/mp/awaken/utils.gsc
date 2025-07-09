#include maps\mp\_utility;
#include common_scripts\utility;

setPersIfUninitialized(name, value)
{
	if(!isDefined(self.pers[name]))
		self.pers[name] = value;
}