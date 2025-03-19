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
	"USP_CRYE_CPC_LIGHT", 
	"USP_CRYE_JPC_FS_CBR", 
	"USP_CRYE_NCPC_FAST", 
	"milgp_v_mmac_light_CB", 
	"milgp_v_jpc_Light_cb", 
	"rhsusf_plateframe_light"] call BIS_fnc_selectRandom;
_optic = [
	"rhsusf_acc_T1_high", 0.1,
	"rhsusf_acc_eotech_xps3", 0.8,
	"rhsusf_acc_compm4", 0.1,
	"rhsusf_acc_eotech_552", 0.1] call BIS_fnc_selectRandomWeighted;
_mag = [
	"rhs_30Rnd_545x39_7N10_camo_AK", 
	"rhs_30Rnd_545x39_7N10_desert_AK", 
	"rhs_30Rnd_545x39_7N10_plum_AK",
	"rhs_30Rnd_545x39_7N10_AK"] call BIS_fnc_selectRandom;
_head = [
	"rhsusf_opscore_coy_cover", 0.10, 
	"rhsusf_opscore_mar_ut_pelt", 0.10, 
	"milgp_h_airframe_01_CB_hexagon", 0.10, 
	"milgp_h_airframe_01_CB", 0.10, 
	"milgp_h_airframe_01_goggles_CB_hexagon", 0.01, 
	"milgp_h_airframe_01_goggles_CB", 0.01, 
	"milgp_h_opscore_01_CB_hexagon", 0.10, 
	"milgp_h_opscore_01_CB", 0.10, 
	"milgp_h_opscore_01_goggles_CB_hexagon", 0.01, 
	"milgp_h_opscore_01_goggles_CB", 0.01] call BIS_fnc_selectRandomWeighted;
_goggles = [
	"", 0.60, 
	"milgp_f_face_shield_BLK", 0.01, 
	"milgp_f_face_shield_CB", 0.01, 
	"milgp_f_face_shield_khk", 0.01, 
	"milgp_f_face_shield_MC", 0.01, 
	"milgp_f_face_shield_RGR", 0.01, 
	"milgp_f_face_shield_shades_shemagh_BLK", 0.01, 
	"milgp_f_face_shield_shemagh_CB", 0.01, 
	"milgp_f_face_shield_shemagh_khk", 0.01, 
	"milgp_f_face_shield_shemagh_MC", 0.01, 
	"milgp_f_face_shield_shemagh_RGR", 0.01, 
	"USP_511_ra", 0.01, 
	"USP_511_ra_EMB", 0.01, 
	"USP_GATORZ_BLK", 0.01, 
	"USP_ok_detc", 0.01, 
	"USP_ok_sisj", 0.01] call BIS_fnc_selectRandomWeighted;
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

comment "Add Weapons and attachments";
player addWeapon "rhs_weap_ak105_zenitco01_b33_afg";
player addPrimaryWeaponItem "rhs_acc_dtk4short";
player addPrimaryWeaponItem "rhs_acc_perst3_2dp_h";
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem "rhsusf_acc_grip2";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack "B_AssaultPack_cbr";
player addHeadgear _head;
player addGoggles _goggles;

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_Clacker";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "ACE_CableTie";
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
player addItem "tsp_breach_linear_mag";
for "_i" from 1 to 7 do {player addItem _mag;};
player addItem "ACE_M84";

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

hint "You're a SOF assaulter in non-attributable clothing. \n Perfect for conducting false-flag opeartions.";