#include common_scripts\utility;
#include maps\mp\_utility;

init()
{
	setDvar("didyouknow", "#^1AWAKEN");
	setDvar("sv_hostname", "#^1AWAKEN");

	level thread onPlayerConnect();
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill("connected", player);
		player thread onPlayerSpawned();
	}
}

onPlayerSpawned()
{
	self endon("disconnect");
	
	for(;;)
	{
		self waittill("spawned_player");
	}
}