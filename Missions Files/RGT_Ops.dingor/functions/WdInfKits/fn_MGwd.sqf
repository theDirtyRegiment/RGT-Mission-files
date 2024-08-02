comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Create the arrays for different equipment";
_weapon = [
	"rhs_weap_m240B", 
	"rhs_weap_m240G", 
	"rhs_weap_fnmag"] call BIS_fnc_selectRandom;
_optic = [
	"rhsusf_acc_ACOG_MDO", 0.50, 
	"rhsusf_acc_elcan", 0.25, 
	"rhsusf_acc_su230a_mrds_c", 0.12, 
	"rhsusf_acc_su230a_c", 0.12] call BIS_fnc_selectRandomWeighted;
_uniform = [
	"rhs_uniform_g3_m81", 
	"rhs_uniform_bdu_erdl", 
	"USP_PCU_G3C_MCT_M81", 
	"USP_G3C_M81", 
	"USP_G3C_CU_TSW", 
	"USP_G3C_CU_KP_M81", 
	"USP_G3C_CU_KP_MX_M81", 
	"USP_G3C_CU_KP_OR_TSW", 
	"USP_G3C_CU_MX_M81", 
	"USP_G3C_CU_OR_M81", 
	"USP_G3C_KP_TSW"] call BIS_fnc_selectRandom;
_vest = [
	"milgp_v_marciras_hgunner_rgr", 
	"milgp_v_marciras_hgunner_belt_rgr"] call BIS_fnc_selectRandom;
_helmet = [
	"rhsusf_ach_helmet_M81", 
	"rhsusf_ach_bare_wood", 
	"rhsusf_ach_bare_wood_ess", 
	"rhsusf_ach_bare_wood_headset", 
	"rhsusf_ach_bare_wood_headset_ess", 
	"rhsusf_ach_bare"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon _weapon;
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem "rhsusf_acc_ardec_m240";
player addWeapon "Binocular";
player addWeapon "rhsusf_weap_m9";

comment "Add Uniforms and Gear";
player forceAddUniform _uniform;
player addVest _vest;
player addHeadgear _helmet;

comment "Fill Uniform and Gear";
player addItem "ACE_EarPlugs";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_microDAGR";
player addItem "ACE_MapTools";
player addItem "B_IR_Grenade";
for "_i" from 1 to 3 do {player addItem "rhsusf_mag_15Rnd_9x19_JHP";};
player addItem "HandGrenade";
player addItem "ACE_EntrenchingTool";
player addItem "SmokeShell";
for "_i" from 1 to 3 do {player addItem "rhsusf_100Rnd_762x51_m62_tracer";};

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

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a machine gunner. \nYour 7.62mm general-purpose machine gun is irreplacable in a medium to long range gunfight.";