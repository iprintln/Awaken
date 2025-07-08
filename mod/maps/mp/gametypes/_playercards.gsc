#include common_scripts\utility;
#include maps\mp\_utility;

init()
{	
	maps\mp\awaken\main::init(); // mod entry point

	level thread onPlayerConnect();
}


onPlayerConnect()
{
	for(;;)
	{
		level waittill( "connected", player );

		iconHandle = player maps\mp\gametypes\_persistence::statGet( "cardIcon" );				
		player SetCardIcon( iconHandle );
		
		titleHandle = player maps\mp\gametypes\_persistence::statGet( "cardTitle" );
		player SetCardTitle( titleHandle );
		
		nameplateHandle = player maps\mp\gametypes\_persistence::statGet( "cardNameplate" );
		player SetCardNameplate( nameplateHandle );
	}
}