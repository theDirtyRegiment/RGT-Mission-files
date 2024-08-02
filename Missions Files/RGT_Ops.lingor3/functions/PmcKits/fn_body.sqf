comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Create the arrays for different equipment";
_suit = [
	"LOP_U_CHR_Functionary_01", 0.45, 
	"LOP_U_CHR_Functionary_02", 0.45, 
	"TRYK_SUITS_BLK_F", 0.05, 
	"TRYK_SUITS_BR_F", 0.05] call BIS_fnc_selectRandomWeighted;
_bag = [
	"", 0.80, 
	"B_Messenger_Black_F", 0.10, 
	"B_Messenger_Gray_F", 0.10] call BIS_fnc_selectRandomWeighted;
	_mag = [
		"rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", 
		"rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", 
		"rhs_mag_30Rnd_556x45_M855A1_EPM", 
		"rhs_mag_30Rnd_556x45_M855A1_PMAG", 
		"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", 
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", 
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", 
		"rhs_mag_30Rnd_556x45_M855A1_Stanag"] call BIS_fnc_selectRandom;
_head = [
	"", 
	"TRYK_H_wig"] call BIS_fnc_selectRandom;
_glasses = [
	"USP_DETCORD", 
	"USP_DETCORD3", 
	"USP_DETCORD_GRN", 
	"USP_DETCORD_GRN3", 
	"USP_DETCORD_TAN", 
	"USP_DETCORD_TAN3"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _suit;
player addBackpack _bag;
player addHeadgear _head;
player addGoggles _glasses;

comment "Fill Uniform and Gear";
player addItem "ACE_epinephrine";
for "_i" from 1 to 5 do {player addItem "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItem "ACE_CableTie";};
player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";
player addItem "ACE_microDAGR";
for "_i" from 1 to 3 do {player addItem "rhsusf_mag_17Rnd_9x19_FMJ";};
if (_bag isEqualTo "") then {
	player addItem "rhsusf_mag_17Rnd_9x19_FMJ";
}	else	{
	player addWeapon "rhsusf_weap_MP7A2";
	for "_i" from 1 to 5 do {player addItemToBackpack "rhsusf_mag_40Rnd_46x30_FMJ";};
	player addPrimaryWeaponItem "rhs_acc_grip_ffg2";
	player addPrimaryWeaponItem "rhsusf_acc_mrds";
	for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
	player addItemToBackpack "SmokeShellBlue";
	for "_i" from 1 to 2 do {player addItemToBackpack "HandGrenade";};
	for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
	player addItemToBackpack "ACE_SpraypaintRed";
	player addItemToBackpack "ACE_personalAidKit";
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 7 do {player addItemToBackpack "ACE_tourniquet";};
};
if ((_suit isEqualTo "TRYK_SUITS_BLK_F") or (_suit isEqualTo "TRYK_SUITS_BR_F")) then {
	removeBackpack player;
	player addVest "rhsusf_plateframe_light";
	player removeWeapon (primaryWeapon player);
	player addWeapon "rhs_weap_m4a1_handguard";
	_grip = ["rhs_acc_m4_moe", "rhs_acc_m4_moe_d", "rhs_acc_m4_handguard"] call BIS_fnc_selectRandom;
	player addPrimaryWeaponItem _grip;
	for "_i" from 1 to 3 do {player addItem _mag;};
	for "_i" from 1 to 3 do {player addItem "rhsusf_mag_17Rnd_9x19_FMJ";};
}	else	{
	for "_i" from 1 to 3 do {player addItem "rhsusf_mag_17Rnd_9x19_FMJ";};
};
player addWeapon "rhsusf_weap_glock17g4";


comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "ItemGPS";
player linkItem "TFAR_rf7800str";

player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

if (_bag isEqualTo "") then {
	hint "You're a lightly armed bodyguard. \n \nPerfect to stick close to your client in public. \n \nFor any real threat you are dependent on the fellow members of the PSD.";
}	else	{
	hint "You're a bodyguard. Armed with an MP7 and a go-bag, you're a vital part of the personal security detail."; 
};
if ((_suit isEqualTo "TRYK_SUITS_BLK_F") or (_suit isEqualTo "TRYK_SUITS_BR_F")) then {
	hint "You're a heavily armed member of a personal security detail. With body armor and assault rifle, you have to remain unseen until you are needed.";
};
