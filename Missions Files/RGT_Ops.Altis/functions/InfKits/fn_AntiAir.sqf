comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_rifle = ["rhs_weap_m4a1_blockII", 0.48, "rhs_weap_m4a1_blockII_d", 0.25, "rhs_weap_m4a1_blockII_KAC", 0.48, "rhs_weap_m4a1", 0.02, "rhs_weap_mk18", 0.02, "rhs_weap_m27iar", 0.02] call BIS_fnc_selectRandomWeighted;
player addWeapon _rifle;
switch(_rifle) do {
	case "rhs_weap_m27iar": {
		player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
	};
	case "rhs_weap_m4a1_blockII_d": {
		_grip = ["", "rhsusf_acc_grip2_tan"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
	};
	default {
		_grip = ["", "rhsusf_acc_grip2"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
	};
};
_rail = ["rhsusf_acc_M952V", "acc_flashlight", "rhsusf_acc_wmx", "rhsusf_acc_wmx_bk"] call BIS_fnc_selectRandom;
player addPrimaryWeaponItem _rail;
_optic = ["rhsusf_acc_eotech_552", 0.70, "rhsusf_acc_compm4", 0.25, "rhsusf_acc_ACOG_RMR", 0.05] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
player addWeapon "rhs_weap_fim92";
player addSecondaryWeaponItem "rhs_fim92_mag";

comment "Add containers";
_array = ["milgp_u_g3_field_set_mc", "USP_PCU_G3C_MC", "USP_PCU_G3C_KP_MC", "USP_PCU_G3C_KP_MX_MC", "USP_PCU_G3C_KP_OR_MC", "USP_PCU_G3C_MX_MC", "USP_PCU_G3C_OR_MC", "USP_SOFTSHELL_G3C_MC", "USP_SOFTSHELL_G3C_KP_MC", "USP_SOFTSHELL_G3C_KP_MX_MC", "USP_SOFTSHELL_G3C_KP_OR_MC", "USP_SOFTSHELL_G3C_MX_MC", "USP_SOFTSHELL_G3C_OR_MC"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
player addItem "ACE_EarPlugs";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_MapTools";
player addItem "ACE_CableTie";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_microDAGR";
player addVest "rhsusf_iotv_ocp_Repair";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "ACE_EntrenchingTool";
player addItem "B_IR_Grenade";
_array = ["rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", "rhs_mag_30Rnd_556x45_M855A1_EPM", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855A1_Stanag"];
_ammo = selectRandom _array;
for "_i" from 1 to 6 do {player addItem _ammo;};
_array = ["rhsusf_ach_helmet_ocp_norotos", "rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ocp"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as anti air weapons specialist. \nKeep your eye to the sky!";