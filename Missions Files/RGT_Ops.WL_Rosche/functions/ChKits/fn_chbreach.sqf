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
_rifle = [
	"rhs_weap_mk18_bk", 0.05, 
	"rhs_weap_mk18_urgi_kac", 0.05,
	"rhs_weap_m4_urgi_kac", 0.1,
	"rhs_weap_mk18_KAC_bk", 0.05, 
	"rhs_weap_m4a1_blockII_bk", 0.40, 
	"rhs_weap_m4a1_blockII_KAC_bk", 0.40, 
	"rhs_weap_hk416d10_LMT", 0.05,
	"rhs_weap_hk416d10_smr", 0.05,
	"rhs_weap_hk416d10_smr_kac", 0.05,
	"rhs_weap_hk416d15_smr", 0.05,
	"rhs_weap_hk416d15_smr_kac", 0.05,
	"rhs_weap_hk416d10", 0.05] call BIS_fnc_selectRandomWeighted;
_lam = [
	"rhsusf_acc_anpeq15", 0.50, 
	"rhsusf_acc_anpeq15_bk", 0.25, 
	"rhsusf_acc_anpeq15_wmx_light", 0.25] call BIS_fnc_selectRandomWeighted;
_optic = [
	"rhsusf_acc_eotech_xps3", 0.70, 
	"optic_mrco", 0.05, 
	"rhsusf_acc_t1_high", 0.10, 
	"rhsusf_acc_g33_xps3", 0.10] call BIS_fnc_selectRandomWeighted;
_clothing = [
	"U_I_C_Soldier_Bandit_2_F", 
	"U_I_C_Soldier_Bandit_3_F", 
	"U_C_Man_casual_3_F", 
	"U_C_Man_casual_1_F", 
	"U_I_G_resistanceLeader_F", 
	"TRYK_U_B_C02_Tsirt", 
	"TRYK_U_B_PCUGs_BLK_R", 
	"TRYK_U_B_PCUGs_gry_R", 
	"TRYK_U_B_PCUGs_OD_R", 
	"TRYK_U_B_PCUGs_BLK", 
	"TRYK_U_B_PCUGs_gry", 
	"TRYK_U_B_PCUGs_OD", 
	"TRYK_shirts_DENIM_BK", 
	"TRYK_shirts_DENIM_BL", 
	"TRYK_shirts_DENIM_BWH", 
	"TRYK_shirts_DENIM_od", 
	"TRYK_shirts_DENIM_R", 
	"TRYK_shirts_DENIM_RED2", 
	"TRYK_shirts_DENIM_WH", 
	"TRYK_shirts_DENIM_WHB", 
	"TRYK_shirts_DENIM_ylb", 
	"TRYK_shirts_DENIM_od_Sleeve", 
	"TRYK_shirts_DENIM_ylb_Sleeve", 
	"TRYK_shirts_DENIM_BK_Sleeve", 
	"TRYK_shirts_DENIM_BL_Sleeve", 
	"TRYK_shirts_DENIM_BWH_Sleeve", 
	"TRYK_shirts_DENIM_R_Sleeve", 
	"TRYK_shirts_DENIM_RED2_Sleeve", 
	"TRYK_shirts_DENIM_WH_Sleeve", 
	"TRYK_shirts_DENIM_WHB_Sleeve", 
	"TRYK_U_denim_hood_blk", 
	"TRYK_U_denim_jersey_blk", 
	"TRYK_U_denim_jersey_blu", 
	"TRYK_U_B_BLK_T_BG_BK", 
	"TRYK_U_B_RED_T_BG_BR", 
	"TRYK_U_B_BLK_T_BG_WH", 
	"TRYK_U_B_BLK_T_BK", 
	"TRYK_U_B_RED_T_BR", 
	"TRYK_U_B_BLK_T_WH", 
	"TRYK_U_B_Denim_T_BG_BK", 
	"TRYK_U_B_Denim_T_BG_WH", 
	"TRYK_U_B_Denim_T_BK", 
	"TRYK_U_B_Denim_T_WH"] call BIS_fnc_selectRandom;
_vest = [
	"milgp_v_mmac_assaulter_belt_cb", 
	"milgp_v_mmac_assaulter_cb", 
	"milgp_v_jpc_Assaulter_cb", 
	"milgp_v_jpc_assaulter_belt_cb", 
	"USP_CRYE_NCPC_ASLT", 
	"USP_EAGLE_MBAV_LOAD", 
	"USP_VEST_STRANDHOGG2_CBR", 
	"USP_VEST_PLATEFRAME_LOAD2_TAN"] call BIS_fnc_selectRandom;
_pack = [
	"B_Kitbag_cbr",
	"TRYK_B_BAF_BAG_CYT",
	"USP_REEBOW_3DAP_ACC1_CBR",
	"USP_REEBOW_3DAP_ACC10_CBR",
	"USP_REEBOW_3DAP_ACC2_CBR",
	"USP_REEBOW_3DAP_ACC3_CBR",
	"USP_REEBOW_3DAP_ACC4_CBR",
	"USP_REEBOW_3DAP_ACC5_CBR",
	"USP_REEBOW_3DAP_ACC6_CBR",
	"USP_REEBOW_3DAP_ACC7_CBR",
	"USP_REEBOW_3DAP_ACC8_CBR",
	"milgp_b_patrol_01_cb"] call BIS_fnc_selectRandom;
_mag = [
	"rhs_mag_30Rnd_556x45_Mk318_PMAG", 
	"rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan", 
	"rhs_mag_30Rnd_556x45_Mk318_Stanag"] call BIS_fnc_selectRandom;
_helmet = [
	"milgp_h_airframe_04_CB_hexagon", 
	"milgp_h_airframe_04_CB", 
	"milgp_h_airframe_04_goggles_CB_hexagon", 
	"milgp_h_airframe_04_goggles_CB", 
	"milgp_h_airframe_06_CB_hexagon", 
	"milgp_h_airframe_06_CB", 
	"milgp_h_airframe_06_goggles_CB_hexagon", 
	"milgp_h_airframe_06_goggles_CB", 
	"rhsusf_opscore_coy_cover_pelt", 
	"milgp_h_opscore_04_CB_hexagon", 
	"milgp_h_opscore_04_CB", 
	"milgp_h_opscore_04_goggles_CB_hexagon", 
	"milgp_h_opscore_04_goggles_CB", 
	"milgp_h_opscore_05_CB_hexagon", 
	"milgp_h_opscore_05_CB", 
	"milgp_h_opscore_05_goggles_CB_hexagon", 
	"milgp_h_opscore_05_goggles_CB", 
	"milgp_h_opscore_06_CB_hexagon", 
	"milgp_h_opscore_06_CB", 
	"milgp_h_opscore_06_goggles_CB_hexagon", 
	"milgp_h_opscore_06_goggles_CB"] call BIS_fnc_selectRandom;
_goggles = [
	"rhsusf_shemagh2_od", 
	"rhsusf_shemagh2_grn", 
	"rhsusf_shemagh2_tan", 
	"milgp_f_face_shield_BLK", 
	"milgp_f_face_shield_CB", 
	"milgp_f_face_shield_khk", 
	"milgp_f_face_shield_MC", 
	"milgp_f_face_shield_RGR", 
	"milgp_f_face_shield_shemagh_BLK", 
	"milgp_f_face_shield_shemagh_CB", 
	"milgp_f_face_shield_shemagh_khk", 
	"milgp_f_face_shield_shemagh_MC", 
	"milgp_f_face_shield_shemagh_RGR"] call BIS_fnc_selectRandom;
_nods = [
	"USP_GPNVG18_WP_GM_TAN", 0.25, 
	"USP_GPNVG18_WP_GM_TAR_TAN", 0.25,
	"USP_PVS31_WP_BLK2", 0.50, 
	"USP_PVS31_WP_TAN", 0.50, 
	"USP_PVS31_WP_TAN2", 0.25,
	"USP_PVS31_WP_HIGH_BLK", 0.25,
	"USP_PVS31_WP_HIGH_BLK2", 0.25,
	"USP_PVS31_WP_HIGH_TAN", 0.25,
	"USP_PVS31_WP_HIGH_TAN2", 0.25,
	"USP_PVS31_WP_LOW_BLK", 0.25,
	"USP_PVS31_WP_LOW_BLK2", 0.25,
	"USP_PVS31_WP_LOW_TAN", 0.25,
	"USP_PVS31_WP_LOW_TAN2", 0.25,
	"USP_PVS31_WP_MID_BLK", 0.25,
	"USP_PVS31_WP_MID_BLK2", 0.25,
	"USP_PVS31_WP_MID_TAN2", 0.25,
	"USP_PVS31_WP_TAR_BLK", 0.25,
	"USP_PVS31_WP_TAR_BLK2", 0.25,
	"USP_PVS31_WP_TAR_TAN", 0.25,
	"USP_PVS31_WP_TAR_TAN2", 0.25,
	"USP_PVS31_WP_TAR_HIGH_BLK", 0.25,
	"USP_PVS31_WP_TAR_HIGH_BLK2", 0.25,
	"USP_PVS31_WP_TAR_HIGH_TAN", 0.25,
	"USP_PVS31_WP_TAR_HIGH_TAN2", 0.25,
	"USP_PVS31_WP_TAR_LOW_BLK", 0.25,
	"USP_PVS31_WP_TAR_LOW_BLK2", 0.25,
	"USP_PVS31_WP_TAR_LOW_TAN", 0.25,
	"USP_PVS31_WP_TAR_LOW_TAN2", 0.25,
	"USP_PVS31_WP_TAR_MID_BLK", 0.25,
	"USP_PVS31_WP_TAR_MID_BLK2", 0.25,
	"USP_PVS31_WP_TAR_MID_TAN", 0.25,
	"USP_PVS31_WP_TAR_MID_TAN2", 0.25,	
	"USP_PVS15", 0.25,
	"USP_PVS15_TAR", 0.25] call BIS_fnc_selectRandomWeighted;

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addHeadgear _helmet;
player addGoggles _goggles;
player addBackpack _pack;

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem "ace_muzzle_mzls_l";
player addPrimaryWeaponItem _lam;
player addPrimaryWeaponItem _optic;
player addWeapon "ACE_VMM3";
switch(_rifle) do {
	case "rhs_weap_mk18_urgi_kac": {
		player addPrimaryWeaponItem "rhs_acc_mk18_urgi";
	};
	case "rhs_weap_m4_urgi_kac": {
		player addPrimaryWeaponItem "rhs_acc_m4_urgi";
	};
	case "rhs_weap_hk416d10_smr": {
		player addPrimaryWeaponItem "rhs_acc_mk18_smr";
	};
	case "rhs_weap_hk416d10_smr_kac": {
		player addPrimaryWeaponItem "rhs_acc_mk18_smr";
	};	
	case "rhs_weap_hk416d15_smr": {
		player addPrimaryWeaponItem "rhs_acc_m4_smr";
	};
	case "rhs_weap_mk18_bk": {
		_grip = ["", "rhsusf_acc_grip2"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_mk18_KAC_bk": {
		_grip = ["", "rhsusf_acc_grip2"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_m4a1_blockII_bk": {
		player addPrimaryWeaponItem "rhsusf_acc_grip2";
	};	
	case "rhs_weap_m4a1_blockII_KAC_bk": {
		player addPrimaryWeaponItem "rhsusf_acc_grip2";
	};		
};

comment "Fill Uniform and Gear";
player addItem "ACE_EarPlugs";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_MapTools";
player addItem "ACE_CableTie";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_microDAGR";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "HandGrenade";
player addItem "SmokeShellRed";
for "_i" from 1 to 5 do {player addItem _mag;};
player addItem "SmokeShell";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_DefusalKit";
player addItemToBackpack "ACE_Clacker";
player addItemToBackpack "ACE_SpraypaintRed";
player addItemToBackpack "ACE_SpraypaintGreen";
for "_i" from 1 to 3 do {player addItemToBackpack "tsp_breach_linear_mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "DemoCharge_Remote_Mag";};

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem _nods;

player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're equipped as a special operations breacher for a private military company.";