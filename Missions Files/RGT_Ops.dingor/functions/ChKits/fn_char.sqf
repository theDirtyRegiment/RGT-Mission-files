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
	"rhs_weap_minimi_para_railed", 
	"rhs_weap_m249_pip_S_vfg1", 
	"rhs_weap_m249_pip_S"]call BIS_fnc_selectRandom;
_optic = [
	"", 0.75, 
	"rhsusf_acc_eotech_xps3", 0.25, 
	"rhsusf_acc_g33_xps3", 0.25] call BIS_fnc_selectRandomWeighted;
_optic1 = [
	"optic_mrd", 
	"optic_mrd_black"] call BIS_fnc_selectRandom;
_clothing = [
	"U_I_C_Soldier_Bandit_2_F", 
	"U_I_C_Soldier_Bandit_3_F", 
	"U_C_Man_casual_3_F", "U_C_Man_casual_1_F", 
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
	"milgp_v_mmac_hgunner_belt_cb", 
	"milgp_v_mmac_hgunner_cb", 
	"milgp_v_jpc_hgunner_cb", 
	"milgp_v_jpc_hgunner_belt_cb"] call BIS_fnc_selectRandom;
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
_backpack = [
	"B_Kitbag_cbr",
	"milgp_bp_Tomahawk_cb",
	"TRYK_B_BAF_BAG_CYT",
	"USP_ZIPON_PACK_CPC_CBR",
	"USP_ZIPON_PANEL_CPC_CBR",
	"USP_ZIPON_PANEL_CPC_BC_SMK_CBR",
	"USP_ZIPON_PANEL_CPC_SMK_CBR",
	"USP_HYDRATION_PACK_CBR",
	"USP_REEBOW_3DAP_ACC1_CBR",
	"USP_REEBOW_3DAP_ACC10_CBR",
	"USP_REEBOW_3DAP_ACC2_CBR",
	"USP_REEBOW_3DAP_ACC3_CBR",
	"USP_REEBOW_3DAP_ACC4_CBR",
	"USP_REEBOW_3DAP_ACC5_CBR",
	"USP_REEBOW_3DAP_ACC6_CBR",
	"USP_REEBOW_3DAP_ACC7_CBR",
	"USP_REEBOW_3DAP_ACC8_CBR",
	"USP_REEBOW_3DAP_ACC9_CBR"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack _backpack;
player addHeadgear _helmet;
player addGoggles _goggles;

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem "rhsusf_acc_grip1";
player addWeapon "hgun_Pistol_heavy_01_F";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "11Rnd_45ACP_Mag";
player addHandgunItem _optic1;

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "HandGrenade";
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "ACE_M84";
for "_i" from 1 to 3 do {player addItem "rhsusf_200rnd_556x45_mixed_box";};
player addItem "rhsusf_100Rnd_556x45_mixed_soft_pouch";


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

hint "You're equipped as a special operations machine gunner for a private military company.";