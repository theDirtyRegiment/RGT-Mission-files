comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_rifle = ["rhs_weap_m14ebrri", 0.70, "rhs_weap_mk17_STD", 0.02, "srifle_DMR_06_camo_F", 0.20, "rhs_weap_sr25_d", 0.05, "rhs_weap_m14_rail", 0.50, "rhs_weap_m14_rail_d", 0.50, "rhs_weap_m14_rail_fiberglass", 0.50, "rhs_weap_m14_rail_wd", 0.50] call BIS_fnc_selectRandomWeighted;
player addWeapon _rifle;
player addPrimaryWeaponItem "optic_MRCO";
if (_rifle isEqualTo "rhs_weap_mk17_STD") then { 
	player addPrimaryWeaponItem "rhsusf_acc_anpeq15_wmx_sc";
	player addPrimaryWeaponItem "rhsgref_sdn6_suppressor"; 
}	else	{
	player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
};
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addPrimaryWeaponItem "rhsusf_acc_m14_bipod";

comment "Add containers";
_array = ["rhs_uniform_g3_m81", "rhs_uniform_bdu_erdl", "USP_PCU_G3C_MCT_M81", "USP_G3C_M81", "USP_G3C_CU_TSW", "USP_G3C_CU_KP_M81", "USP_G3C_CU_KP_MX_M81", "USP_G3C_CU_KP_OR_TSW", "USP_G3C_CU_MX_M81", "USP_G3C_CU_OR_M81", "USP_G3C_KP_TSW"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
_array = ["milgp_v_marciras_marksman_rgr", "milgp_v_marciras_marksman_belt_rgr"];
_vest = selectRandom _array;
player addVest _vest;
_array = ["TRYK_B_BAF_BAG_rgr", "USP_PATROL_PACK_RGR"];
_bag = selectRandom _array;
player addBackpack _bag;
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
for "_i" from 1 to 3 do {player addItem "rhsusf_mag_15Rnd_9x19_JHP";};
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "SmokeShellBlue";
_array = ["rhs_mag_20Rnd_SCAR_762x51_mk316_special", "rhs_mag_20Rnd_SCAR_762x51_mk316_special_bk"];
_mag1 = selectRandom _array;
_array = ["rhs_mag_20Rnd_SCAR_762x51_m61_ap", "rhs_mag_20Rnd_SCAR_762x51_m61_ap_bk"];
_mag2 = selectRandom _array;
if (_rifle isEqualTo "rhs_weap_sr25_d") then {
	for "_i" from 1 to 4 do {player addItem "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";};
	for "_i" from 1 to 3 do {player addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
};
if (_rifle isEqualTo "rhs_weap_mk17_STD") then {
	for "_i" from 1 to 4 do {player addItem _mag1;};
	for "_i" from 1 to 3 do {player addItem _mag2;}; 
};
if (_rifle isEqualTo "rhs_weap_m14ebrri") then {
	for "_i" from 1 to 4 do {player addItem "ACE_20Rnd_762x51_M118LR_Mag";};
	for "_i" from 1 to 3 do {player addItem "ACE_20Rnd_762x51_M993_AP_Mag";};
};
if (_rifle isEqualTo "srifle_DMR_06_camo_F") then {
	for "_i" from 1 to 4 do {player addItem "ACE_20Rnd_762x51_M118LR_Mag";};
	for "_i" from 1 to 3 do {player addItem "ACE_20Rnd_762x51_M993_AP_Mag";};
};
if (_rifle isEqualTo "rhs_weap_m14_rail") then {
	for "_i" from 1 to 4 do {player addItem "ACE_20Rnd_762x51_M118LR_Mag";};
	for "_i" from 1 to 3 do {player addItem "ACE_20Rnd_762x51_M993_AP_Mag";};
};
if (_rifle isEqualTo "rhs_weap_m14_rail_d") then {
	for "_i" from 1 to 4 do {player addItem "ACE_20Rnd_762x51_M118LR_Mag";};
	for "_i" from 1 to 3 do {player addItem "ACE_20Rnd_762x51_M993_AP_Mag";};
};
if (_rifle isEqualTo "rhs_weap_m14_rail_fiberglass") then {
	for "_i" from 1 to 4 do {player addItem "ACE_20Rnd_762x51_M118LR_Mag";};
	for "_i" from 1 to 3 do {player addItem "ACE_20Rnd_762x51_M993_AP_Mag";};
};
if (_rifle isEqualTo "rhs_weap_m14_rail_wd") then {
	for "_i" from 1 to 4 do {player addItem "ACE_20Rnd_762x51_M118LR_Mag";};
	for "_i" from 1 to 3 do {player addItem "ACE_20Rnd_762x51_M993_AP_Mag";};
};
_array = ["rhsusf_ach_helmet_M81", "rhsusf_ach_bare_wood", "rhsusf_ach_bare_wood_ess", "rhsusf_ach_bare_wood_headset", "rhsusf_ach_bare_wood_headset_ess", "rhsusf_ach_bare"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

player addWeapon "rhsusf_weap_m9";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry marksman. \nYour equipment is optimized for daylight medium-range precision engagements";