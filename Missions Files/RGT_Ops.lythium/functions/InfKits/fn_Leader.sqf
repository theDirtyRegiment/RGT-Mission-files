// Remove gear before applying loadouts
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

// Create the arrays for different equipment
_rifle = [
	"rhs_weap_m4a1_blockII", 0.48, 
	"rhs_weap_m4a1_blockII_d", 0.25, 
	"rhs_weap_m4a1_blockII_KAC", 0.48, 
	"rhs_weap_m4a1", 0.02, 
	"rhs_weap_mk18", 0.02, 
	"rhs_weap_m27iar", 0.02] call BIS_fnc_selectRandomWeighted;
_optic = [
	"rhsusf_acc_su230_mrds_c", 0.25, 
	"rhsusf_acc_ACOG_RMR", 0.75] call BIS_fnc_selectRandomWeighted;
_clothing = [
	"milgp_u_g3_field_set_rolled_mc", 0.75, 
	"milgp_u_g3_field_set_mc", 0.25, 
	"USP_G3C_RS_MC", 0.25, 
	"USP_G3C_RS_CU_MC", 0.25, 
	"USP_G3C_RS_CU_KP_MC", 0.25, 
	"USP_G3C_RS_CU_KP_MX_MC", 0.25, 
	"USP_G3C_RS_CU_KP_OR_MC", 0.25, 
	"USP_G3C_RS_CU_KP_OR_VQ_MC", 0.25, 
	"USP_G3C_RS_KP_MC", 0.25, 
	"USP_G3C_RS2_MC", 0.25, 
	"USP_G3C_RS2_CU_MC" , 0.25, 
	"USP_G3C_RS2_CU_KP_MC", 0.25, 
	"USP_G3C_RS2_CU_KP_MX_MC", 0.25, 
	"USP_G3C_RS2_CU_KP_OR_MC", 0.25, 
	"USP_G3C_RS2_OR_VQ_MC", 0.25] call BIS_fnc_selectRandomWeighted;
_vest = [
	"rhsusf_spcs_ocp_teamleader_alt", 
	"rhsusf_spcs_ocp_squadleader", 
	"rhsusf_spcs_ocp_teamleader", 
	"milgp_v_marciras_teamleader_mc", 
	"milgp_v_marciras_teamleader_belt_mc"] call BIS_fnc_selectRandom;
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
	"rhsusf_ach_helmet_headset_ocp", 
	"rhsusf_ach_helmet_ESS_ocp", 
	"rhsusf_ach_helmet_ocp"] call BIS_fnc_selectRandom;

// Add Uniforms and Gear
player forceAddUniform _clothing;
player addVest _vest;
player addHeadgear _helmet;

// Add Weapons and attachments
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
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
player addPrimaryWeaponItem _optic;
player addWeapon "rhsusf_weap_m9";
player addWeapon "ACE_VectorDay";

// Fill Uniform and Gear
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "B_IR_Grenade";
player addItem "ACE_microDAGR";
player addItem "HandGrenade";
player addItem "ACE_EntrenchingTool";
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
for "_i" from 1 to 7 do {player addItem _ammo;};
for "_i" from 1 to 3 do {player addItem "rhsusf_mag_15Rnd_9x19_FMJ";};

// Add final Gear
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

// Set G Force resistance and Medical + Engineer training
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry commander. \nYour equipment is optimized to provide the leadership, that your team needs. \n \nPROs: Your team is equipped for fire-fights. \n \nCONs: Your team is limited in night-time capability.";