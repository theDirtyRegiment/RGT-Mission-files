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

comment "Add containers";
_clothing = ["milgp_u_g3_field_set_rolled_mc", 0.75, "milgp_u_g3_field_set_mc", 0.25, "USP_G3C_RS_MC", 0.25, "USP_G3C_RS_CU_MC", 0.25, "USP_G3C_RS_CU_KP_MC", 0.25, "USP_G3C_RS_CU_KP_MX_MC", 0.25, "USP_G3C_RS_CU_KP_OR_MC", 0.25, "USP_G3C_RS_CU_KP_OR_VQ_MC", 0.25, "USP_G3C_RS_KP_MC", 0.25, "USP_G3C_RS2_MC", 0.25, "USP_G3C_RS2_CU_MC" , 0.25, "USP_G3C_RS2_CU_KP_MC", 0.25, "USP_G3C_RS2_CU_KP_MX_MC", 0.25, "USP_G3C_RS2_CU_KP_OR_MC", 0.25, "USP_G3C_RS2_OR_VQ_MC", 0.25] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
_vest = ["rhsusf_spcs_ocp_medic", "milgp_v_marciras_medic_mc", "milgp_v_marciras_medic_belt_mc"] call BIS_fnc_selectRandom;
player addVest _vest;
player addBackpack "TRYK_B_Medbag_BK";
player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player addItem "ACE_CableTie";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "B_IR_Grenade";
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "HandGrenade";
player addItem "SmokeShellRed";
_ammo = ["rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", "rhs_mag_30Rnd_556x45_M855A1_EPM", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855A1_Stanag"] call BIS_fnc_selectRandom;
for "_i" from 1 to 7 do {player addItem _ammo;};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
player addItemToBackpack "ACE_bodyBag";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_SpraypaintRed";
player addItemToBackpack "ACE_plasmaIV";
player addItemToBackpack "ACE_salineIV";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_plasmaIV_500";};
player addItemToBackpack "ACE_plasmaIV_250";
player addItemToBackpack "ACE_salineIV_250";
player addItemToBackpack "ACE_surgicalKit";
player addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_adenosine";};
_helmet = ["rhsusf_ach_helmet_ocp_norotos", "rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ocp"] call BIS_fnc_selectRandom;
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

[[player],"ace_medical_medicClass", 1, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry medic. \nYour medical equipment and expertise is vital for your unit's survival.";