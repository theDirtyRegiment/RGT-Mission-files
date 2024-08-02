comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Create the arrays for different equipment";
_clothing = [
	"milgp_u_g3_field_set_mc", 
	"milgp_u_g3_field_set_rolled_mc"] call BIS_fnc_selectRandom;
_vest = [
	"rhsusf_spcs_ocp_rifleman", 0.45, 
	"rhsusf_spcs_ocp_rifleman_alt", 0.45, 
	"rhsusf_iotv_ocp_Rifleman", 0.10] call BIS_fnc_selectRandomWeighted;
_ammo = [
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", 
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", 
	"rhs_mag_30Rnd_556x45_M855A1_EPM", 
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", 
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", 
	"rhs_mag_30Rnd_556x45_M855A1_Stanag"] call BIS_fnc_selectRandom;
_helmet = [
	"rhsusf_ach_helmet_ocp_norotos", 
	"rhsusf_ach_helmet_camo_ocp", 
	"rhsusf_ach_helmet_headset_ess_ocp", 
	"rhsusf_ach_helmet_headset_ocp"] call BIS_fnc_selectRandom;
_pack = [
	"TFAR_rt1523g_sage",
	"USP_TACTICAL_PACK_CCT",
	"USP_TACTICAL_PACK_CCT",
	"USP_TACTICAL_PACK_CCT2",
	"USP_TACTICAL_PACK_CCT2",
	"USP_TACTICAL_PACK_CCT3",
	"USP_TACTICAL_PACK_CCT3",
	"USP_TACTICAL_PACK_CCT4",
	"USP_TACTICAL_PACK_CCT4"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon "rhs_weap_m4a1_carryhandle_mstock";
player addPrimaryWeaponItem "rhsusf_acc_nt4_black";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
player addPrimaryWeaponItem "rhsusf_acc_g33_xps3";
player addPrimaryWeaponItem "rhsusf_acc_kac_grip";
player addWeapon "ACE_Vector";

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack _pack;
player addHeadgear _helmet;

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
for "_i" from 1 to 2 do {player addItem "ACE_Kestrel4500";};
for "_i" from 1 to 2 do {player addItem "ACE_ATragMX";};
for "_i" from 1 to 2 do {player addItem "ACE_RangeCard";};
player addItem "ACE_CableTie";
player addItem "ACE_microDAGR";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "HandGrenade";
player addItem "SmokeShell";
player addItem "SmokeShellRed";
for "_i" from 1 to 9 do {player addItem _ammo;};
player addItem "SmokeShellBlue";
player addItem "ACE_SpottingScope";
player addItem "ACE_DefusalKit";
for "_i" from 1 to 2 do {player addItem "APERSTripMine_Wire_Mag";};

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 1, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're the spotter, radioman and team leader of a 2-man sniper team. \nYou're equipped with 40mm UGL, tripwire mines and a defusal kit for added firepower and sniper hide security.";