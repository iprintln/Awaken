#include common_scripts\utility;
#include maps\mp\_utility;

#include maps\mp\awaken\utils;

init()
{
	precacheModel("test_sphere_silver");
	precacheModel("prop_flag_neutral");

	precacheItem("lightstick_mp");
	precacheItem("throwingknife_rhand_mp");
	precacheItem("defaultweapon_mp");

	precacheShader("white");
	precacheShader("gradient_fadein");

	setDvar("didyouknow", "#^1AWAKEN");
	setDvar("sv_hostname", "#^1AWAKEN");
	setDvar("scr_sd_timelimit", 2.5);
	setDvar("scr_sd_roundlimit", 0);
	setDvar("scr_sd_roundswitch", 0);
	setDvar("scr_sd_winlimit", 0);
	setDvar("testClients_doAttack", 0);
	setDvar("testClients_doMove", 0);
	setDvar("testClients_watchKillcam", 0);
	setDvar("testClients_doCrouch", 0);
	setDvarIfUninitialized("scr_killcam_time", 4);

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

		self setClientDvar("loc_warnings", 0);
		self setClientDvar("loc_warningsAsErrors", 0);

		self iPrintLn("[^1Awaken TU6^7]");
	}
}