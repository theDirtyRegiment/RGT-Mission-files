comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_suit = ["LOP_U_CHR_Functionary_01", 0.45, "LOP_U_CHR_Functionary_02", 0.45, "TRYK_SUITS_BLK_F", 0.05, "TRYK_SUITS_BR_F", 0.05] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _suit;
player addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_microDAGR";
for "_i" from 1 to 3 do {player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";};
_bag = ["", 0.80, "B_Messenger_Black_F", 0.10, "B_Messenger_Gray_F", 0.10] call BIS_fnc_selectRandomWeighted;
player addBackpack _bag;
_array = ["rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", "rhs_mag_30Rnd_556x45_M855A1_EPM", "rhs_mag_30Rnd_556x45_M855A1_PMAG", "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855A1_Stanag"];
_mag = selectRandom _array;
if (_bag isEqualTo "") then {
	player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";
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
if (_suit isEqualTo "TRYK_SUITS_BLK_F") then {
	removeBackpack player;
	player addVest "rhsusf_plateframe_light";
	player removeWeapon (primaryWeapon player);
	player addWeapon "rhs_weap_m4a1_carryhandle";
	for "_i" from 1 to 3 do {player addItemToVest _mag;};
	for "_i" from 1 to 3 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
}	else	{
	for "_i" from 1 to 3 do {player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";};
};
if (_suit isEqualTo "TRYK_SUITS_BR_F") then {
	removeBackpack player;
	player addVest "rhsusf_plateframe_light";
	player removeWeapon (primaryWeapon player);
	player addWeapon "rhs_weap_m4a1_carryhandle";
	for "_i" from 1 to 3 do {player addItemToVest _mag;};
	for "_i" from 1 to 3 do {player addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
}	else	{
	for "_i" from 1 to 3 do {player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";};
};

_array = ["", "TRYK_H_wig"];
_head = selectRandom _array;
player addHeadgear _head;
_array = ["USP_GATORZ_BLK", "USP_ok_detc_BLU", "USP_ok_detc_EMB", "USP_ok_detc_YEL", "USP_ok_detc", "USP_ok_detc_GRN", "USP_ok_detc_GRN_EMB", "USP_ok_detc_GRN_YEL", "USP_ok_detc_BLU_UP", "USP_ok_detc_EMB_UP", "USP_ok_detc_YEL_UP", "USP_ok_detc_UP", "USP_ok_sisj_BLU", "USP_ok_sisj_EMB", "USP_ok_sisj_YEL", "USP_ok_sisj", "USP_ok_sisj_BLU_UP", "USP_ok_sisj_EMB_UP", "USP_ok_sisj_YEL_UP", "USP_ok_sisj_UP"];
_glasses = selectRandom _array;
player addGoggles _glasses;

player addWeapon "rhsusf_weap_glock17g4";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "ItemGPS";
player linkItem "TFAR_rf7800str";

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

if (_bag isEqualTo "") then {
	hint "You're a lightly armed bodyguard. \n \nPerfect to stick close to your client in public. \n \nFor any real threat you are dependent on the fellow members of the PSD.";
}	else	{
	hint "You're a bodyguard. Armed with an MP7 and a go-bag, you're a vital part of the personal security detail."; 
};
if (_suit isEqualTo "TRYK_SUITS_BLK_F") then {
	hint "You're a heavily armed member of a personal security detail. With body armor and assault rifle, you have to remain unseen until you are needed.";
};
if (_suit isEqualTo "TRYK_SUITS_BR_F") then {
	hint "You're a heavily armed member of a personal security detail. With body armor and assault rifle, you have to remain unseen until you are needed.";
};