/*--------------------------------------------------
	=============== VJ Base Autorun ===============
	*** Copyright (c) 2012-2017 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: Main Autorun file for VJ Base
--------------------------------------------------*/
if (CLIENT) then print("Loading VJ Base (Client)...") else print("Loading VJ Base (Server)...") end

VJBASE_VERSION = "2.3.3"
VJBASE_GETNAME = "VJ Base"

-- Shared --
include("autorun/vj_spawnmenu.lua")
AddCSLuaFile("autorun/vj_base_autorun.lua")
AddCSLuaFile("autorun/vj_controls.lua")
AddCSLuaFile("autorun/vj_entity_codes.lua")
AddCSLuaFile("autorun/vj_files.lua")
AddCSLuaFile("autorun/vj_main_menu.lua")
AddCSLuaFile("autorun/vj_particles.lua")
AddCSLuaFile("autorun/vj_snpc_commands.lua")
AddCSLuaFile("autorun/vj_util.lua")
AddCSLuaFile("autorun/vj_weapon_stuff.lua")

-- Client --
AddCSLuaFile("autorun/client/vj_information_menu.lua")
AddCSLuaFile("autorun/client/vj_installed_addons.lua")
AddCSLuaFile("autorun/client/vj_snpc_menu.lua")
AddCSLuaFile("autorun/client/vj_weapon_menu.lua")

-- Server --
AddCSLuaFile("autorun/server/vj_functions.lua")

-- Modules
AddCSLuaFile("includes/modules/ai_vj_schedule.lua")
AddCSLuaFile("includes/modules/ai_vj_task.lua")
AddCSLuaFile("includes/modules/sound_vj_track.lua")
----=================================----

if (CLIENT) then print("VJ Base client files initialized!") else print("VJ Base server files initialized!") end
-- Raps and Sounds -------------------------------------------------------------------------------------------------------------------------
/*
/_-_-_-_-_-_-_-_-_-_ Official Song of The True Coders -_-_-_-_-_-_-_-_-_-_-_-_\
|------------------- By: DrVrej, Cpt. Hazama, and Orion ------------------------|
|-_-_-_-_-_-_-_-_-_-_- Remake of Hey There Delilah -_-_-_-_-_-_-_-_-_-_-_-_-_-|
\__________________________________________________________________________/
//Hey there AI Base, with your messy lines and broken functions
//Trying hard to give a shit, because the base is year-old useless shiiiiit todaaay
//It's like EA made this fucking code, this is baaad
//Hey there Silverlan and Magenta, Sucking cocks and swapping accounts
//Just so you can get five stars in every fucking addon, yes it's true...
//Just keep trolling you stupid cunts, fat elephants.
//Ooooh, it's how you coded meeee! Oh, it's how you coded meeeee!
//Ooooh, it's how you coded meeee! You fucking cunts, it's how you coded meeeee!
//I travelled over a thousand miles but all I did was run in circles, coded by a fucking stupid prick.
//I tried to make a working addon but never mind, it's fucking broken, coded by a Silverlan-ish dick. -codedbypiratecatty
//Nyan cat and other shit that's 8-bit shitty fucking creepers, coded by a 12 year old shit.
//Crazy-Louis and other faggots stealing stuff from VJ base and fucking gmod workshop in the ass.
//Fucking gmod workshop in the ass.
//Fucking it in the ass.
//Fucking it in the ass.
//Ooooh, it's how you coded meeee! Ohhhh, it's how you coded meeeee!
//Ooooh, it's how you coded meeee! You fucking cunts, it's how you coded meeeee! it's how you coded me!
*/