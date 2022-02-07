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
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
_optic = ["rhsusf_acc_eotech_552", 0.70, "rhsusf_acc_compm4", 0.25, "rhsusf_acc_ACOG_RMR", 0.05] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
player addWeapon "ACE_Vector";

comment "Add containers";
_clothing = ["milgp_u_g3_field_set_rolled_mc", 0.75, "milgp_u_g3_field_set_mc", 0.25, "USP_G3C_RS_MC", 0.25, "USP_G3C_RS_CU_MC", 0.25, "USP_G3C_RS_CU_KP_MC", 0.25, "USP_G3C_RS_CU_KP_MX_MC", 0.25, "USP_G3C_RS_CU_KP_OR_MC", 0.25, "USP_G3C_RS_CU_KP_OR_VQ_MC", 0.25, "USP_G3C_RS_KP_MC", 0.25, "USP_G3C_RS2_MC", 0.25, "USP_G3C_RS2_CU_MC" , 0.25, "USP_G3C_RS2_CU_KP_MC", 0.25, "USP_G3C_RS2_CU_KP_MX_MC", 0.25, "USP_G3C_RS2_CU_KP_OR_MC", 0.25, "USP_G3C_RS2_OR_VQ_MC", 0.25] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
player addVest "milgp_v_mmac_teamleader_MC";
player addBackpack "TFAR_rt1523g_sage";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "B_IR_Grenade";
player addItem "HandGrenade";
player addItem "ACE_EntrenchingTool";
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
_ammo = ["rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", "rhs_mag_30Rnd_556x45_M855A1_EPM", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call BIS_fnc_selectRandom;
for "_i" from 1 to 7 do {player addItem _ammo;};
player addItem "rhsusf_mag_15Rnd_9x19_FMJ";
player addItemToBackpack "Laserdesignator_03";
player addItemToBackpack "Laserbatteries";
_helmet = ["rhsusf_opscore_mc_cover_pelt_cam", "rhsusf_opscore_mc_pelt_nsw", "milgp_h_opscore_05_MC", "milgp_h_opscore_04_MC", "milgp_h_opscore_05_goggles_MC", "milgp_h_opscore_04_goggles_MC", "milgp_h_opscore_03_MC", "milgp_h_opscore_03_goggles_MC"] call BIS_fnc_selectRandom;
player addHeadgear _helmet;

player addWeapon "rhsusf_weap_m9";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry \nJoint Terminal Attack Controller. \nWith your equipment and know-how, you're the master of air-to-ground fire support.";