comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Create the arrays for different equipment";
_rifle = [
	"rhs_weap_m4a1_blockII", 0.48, 
	"rhs_weap_m4a1_blockII_d", 0.25, 
	"rhs_weap_m4a1_blockII_KAC", 0.48, 
	"rhs_weap_m4a1", 0.3, 
	"rhs_weap_mk18", 0.02, 
	"rhs_weap_m27iar", 0.02,
	"rhs_weap_m4_urgi", 0.3,
	"rhs_weap_m4_urgi_kac", 0.3,
	"rhs_weap_m4_fsp", 0.48,
	"rhs_weap_mk18_urgi", 0.02,
	"rhs_weap_mk18_urgi_kac", 0.02] call BIS_fnc_selectRandomWeighted;
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
_nods = [
	"USP_PVS14",
	"USP_PVS14_TAR"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addHeadgear _helmet;
player addBackpack "USP_HYDRATION_PACK_MC";

comment "Add Weapons and attachments";
player addWeapon _rifle;
switch(_rifle) do {
	case "rhs_weap_m27iar": {
		player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
		_lam = ["rhsusf_acc_anpeq15", 0.90, "rhsusf_acc_anpeq15_wmx", 0.10, "rhsusf_acc_anpeq15_bk", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;			
		
	};
	case "rhs_weap_m4a1_blockII_d": {
		_grip = ["", "rhsusf_acc_grip2_tan"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
		_lam = ["rhsusf_acc_anpeq15", 0.90, "rhsusf_acc_anpeq15_wmx", 0.10, "rhsusf_acc_anpeq15_bk", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;		
	};
	case "rhs_weap_m4_urgi": {
		_grip = ["rhs_acc_m4_urgi_d", 0.90, "rhs_acc_m4_urgi_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
		_lam = ["rhsusf_acc_anpeq15", 0.90, "rhsusf_acc_anpeq15_wmx", 0.10, "rhsusf_acc_anpeq15_bk", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;		
	};
	case "rhs_weap_m4a1": {
		_grip = ["rhsusf_acc_grip1", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_de"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
		_lam = ["rhsusf_acc_anpeq15", 0.90, "rhsusf_acc_anpeq15_wmx", 0.10, "rhsusf_acc_anpeq15_bk", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;		
	};
	case "rhs_weap_m4_urgi_kac": {
		_grip = ["rhs_acc_m4_urgi_d", 0.90, "rhs_acc_m4_urgi_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
		_lam = ["rhsusf_acc_anpeq15", 0.90, "rhsusf_acc_anpeq15_wmx", 0.10, "rhsusf_acc_anpeq15_bk", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;		
	};
	case "rhs_weap_mk18_urgi": {
		_grip = ["rhs_weap_mk18_urgi", 0.90, "rhs_acc_mk18_urgi_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
		_lam = ["rhsusf_acc_anpeq15", 0.90, "rhsusf_acc_anpeq15_wmx", 0.10, "rhsusf_acc_anpeq15_bk", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;		
	};
	case "rhs_weap_mk18_urgi_kac": {
		_grip = ["rhs_weap_mk18_urgi", 0.90, "rhs_acc_mk18_urgi_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
		_lam = ["rhsusf_acc_anpeq15", 0.90, "rhsusf_acc_anpeq15_wmx", 0.10, "rhsusf_acc_anpeq15_bk", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;		
	};
	case "SMA_MK16": {
		_lam = ["SMA_SFPEQ_SCARTOP_TAN", 0.90, "SMA_SFPEQ_SCARTOP_BLK", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;		
	};
	case "SMA_Mk16QCB": {
		_lam = ["SMA_SFPEQ_SCARTOP_TAN", 0.90, "SMA_SFPEQ_SCARTOP_BLK", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;		
	};
	default {
		_grip = ["", "rhsusf_acc_grip2"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
		_lam = ["rhsusf_acc_anpeq15", 0.90, "rhsusf_acc_anpeq15_wmx", 0.10, "rhsusf_acc_anpeq15_bk", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _lam;
	};
};
player addPrimaryWeaponItem _optic;
player addWeapon "rhsusf_weap_m9";
player addWeapon "ACE_VectorDay";

comment "Fill Uniform and Gear";
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

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem _nods;
player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry commander. \nYour equipment is optimized to provide the leadership, that your team needs. \n \nPROs: Your team is equipped for fire-fights. \n \nCONs: Your team is limited in night-time capability.";