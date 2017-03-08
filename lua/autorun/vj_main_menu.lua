/*--------------------------------------------------
	=============== Main Menu ===============
	*** Copyright (c) 2012-2017 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
INFO: Used to load the main menu for VJ Base
--------------------------------------------------*/
if (!file.Exists("autorun/vj_base_autorun.lua","LUA")) then return end
---------------------------------------------------------------------------------------------------------------------------------------------
local function CleanVJAll(ply)
	game.CleanUpMap()
	if SERVER then
	ply:SendLua("GAMEMODE:AddNotify(\"Cleaned Up Everything!\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_all", CleanVJAll)
----=================================----
local function CleanSNPCsCorpse(ply)
    local i = 0
	//local cleancvjcorpse = ents.FindByClass("prop_ragdoll")
	//local cleancvjgib = ents.FindByClass("obj_vj_gib_*")
	//table.Add(cleancvjcorpse,cleancvjgib)
    //for k, v in pairs(cleancvjcorpse,cleancvjgib) do
	local getalldeadnigers = ents.GetAll()
	for k, v in pairs(getalldeadnigers) do
		if v.IsVJBaseCorpse == true or v:GetClass() == "obj_vj_gib_*" then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
		/*local cleandatsnpc = ents.GetAll()
        for _, x in pairs(cleandatsnpc) do
			if v:IsNPC() && v:IsValid() && v.IsVJBaseSNPC == true then
			x.VJCorpseDeleted = true
			//if x:IsValid() then x.Corpse = ents.Create(x.DeathCorpseEntityClass)
			end
		end*/
	 end
	end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Corpses\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_snpcscorpse", CleanSNPCsCorpse)
----=================================----
local function CleanSNPCs(ply)
    local i = 0
	//local vjanimalcleanup = ents.FindByClass("npc_vjanimal_*")
	//local cleandatsnpc = ents.FindByClass("npc_vj_*")
	//table.Add(cleandatsnpc,vjanimalcleanup)
	local cleandatsnpc = ents.GetAll()
        for k, v in pairs(cleandatsnpc) do
		if v:IsNPC() && v:IsValid() && v.IsVJBaseSNPC == true then
        // if v:ValidEntity() then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
		end
       end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." SNPCs\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
    //ply:ChatPrint("Removed "..i.." SNPCs")
end
    concommand.Add("vj_cleanup_snpcs", CleanSNPCs)
----=================================----
local function CleanNPCs(ply)
    local i = 0
	local Gettheents = ents.GetAll()
	table.Add(Gettheents)
        for k, v in pairs(Gettheents) do
        // if v:ValidEntity() then
		if v:IsNPC() then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
		end
       end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." (S)NPCs\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
    //ply:ChatPrint("Removed "..i.." SNPCs")
end
    concommand.Add("vj_cleanup_s_npcs", CleanNPCs)
----=================================----
local function CleanDecals(ply)
	local vjplayerdecal = player.GetAll()
	table.Add(vjplayerdecal)
        for k, v in pairs(vjplayerdecal) do
		v:ConCommand("r_cleardecals")
       end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed All Decals\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_decals", CleanDecals)
----=================================----
local function RemovePlyAmmo(ply)
	ply:RemoveAllAmmo()
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed All Your Ammo\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_playerammo", RemovePlyAmmo)
----=================================----
local function RemoveAllWeapon(ply)
	ply:StripWeapons()
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed All Your Weapons\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_playerweapon", RemoveAllWeapon)
----=================================----
local function CleanVJGibs(ply)
    local i = 0
	local cleancvjgib = ents.FindByClass("obj_vj_gib_*")
	table.Add(cleancvjgib)
    for k, v in pairs(cleancvjgib) do
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
       end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Gibs\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_vjgibs", CleanVJGibs)
----=================================----
local function CleanProps(ply)
    local i = 0
	local cleanupprops = ents.FindByClass("prop_physics")
	table.Add(cleanupprops)
    for k, v in pairs(cleanupprops) do
	 if v:GetParent() == NULL or (IsValid(v:GetParent()) && v:GetParent():Health() <= 0 && (v:GetParent():IsNPC() or v:GetParent():IsPlayer())) then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
	 end
	end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Props\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_props", CleanProps)
----=================================----
local function CleanGroundWeapons(ply)
    local i = 0
	local cleanupgroundweps1 = ents.FindByClass("ai_weapon_*")
	local cleanupgroundweps2 = ents.FindByClass("weapon_*")
	table.Add(cleanupgroundweps1,cleanupgroundweps2)
    for k, v in pairs(cleanupgroundweps1,cleanupgroundweps2) do
		if v:IsValid() && v:GetOwner() == NULL then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
       end
	  end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Ground Weapons\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_groundweapons", CleanGroundWeapons)
----=================================----
local function CleanSpawners(ply)
    local i = 0
	local Gettheents = ents.GetAll()
	table.Add(Gettheents)
        for k, v in pairs(Gettheents) do
		if v.IsVJBaseSpawner == true then
		undo.ReplaceEntity( v, nil )
		v:Remove()
		i = i + 1
		end
	   end
	if (SERVER) then
	ply:SendLua("GAMEMODE:AddNotify(\"Removed "..i.." Spawners\", NOTIFY_CLEANUP, 5)") end
	ply:EmitSound("buttons/button15.wav")
end
    concommand.Add("vj_cleanup_spawners", CleanSpawners)