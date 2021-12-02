comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
_rifle = ["rhs_weap_sr25_ec", 0.25, "rhs_weap_sr25", 0.75] call BIS_fnc_selectRandomWeighted;
player addWeapon _rifle;
switch(_rifle) do {
	case "rhs_weap_sr25_ec": {player addPrimaryWeaponItem "rhsusf_acc_aac_762sdn6_silencer";};
	default {player addPrimaryWeaponItem "rhsusf_acc_sr25s";};
};
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
_optic = ["optic_mrco", 0.90, "rhsusf_acc_anpas13gv1", 0.01] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "hgun_Pistol_heavy_01_F";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "11Rnd_45ACP_Mag";
_optic1 = ["optic_mrd", "optic_mrd_black"] call BIS_fnc_selectRandom;
player addHandgunItem _optic1;

comment "Add containers";
_clothing = ["U_I_C_Soldier_Bandit_2_F", "U_I_C_Soldier_Bandit_3_F", "U_C_Man_casual_3_F", "U_C_Man_casual_1_F", "U_I_G_resistanceLeader_F", "TRYK_U_B_C02_Tsirt", "TRYK_U_B_PCUGs_BLK_R", "TRYK_U_B_PCUGs_gry_R", "TRYK_U_B_PCUGs_OD_R", "TRYK_U_B_PCUGs_BLK", "TRYK_U_B_PCUGs_gry", "TRYK_U_B_PCUGs_OD", "TRYK_shirts_DENIM_BK", "TRYK_shirts_DENIM_BL", "TRYK_shirts_DENIM_BWH", "TRYK_shirts_DENIM_od", "TRYK_shirts_DENIM_R", "TRYK_shirts_DENIM_RED2", "TRYK_shirts_DENIM_WH", "TRYK_shirts_DENIM_WHB", "TRYK_shirts_DENIM_ylb", "TRYK_shirts_DENIM_od_Sleeve", "TRYK_shirts_DENIM_ylb_Sleeve", "TRYK_shirts_DENIM_BK_Sleeve", "TRYK_shirts_DENIM_BL_Sleeve", "TRYK_shirts_DENIM_BWH_Sleeve", "TRYK_shirts_DENIM_R_Sleeve", "TRYK_shirts_DENIM_RED2_Sleeve", "TRYK_shirts_DENIM_WH_Sleeve", "TRYK_shirts_DENIM_WHB_Sleeve", "TRYK_U_denim_hood_blk", "TRYK_U_denim_jersey_blk", "TRYK_U_denim_jersey_blu", "TRYK_U_B_BLK_T_BG_BK", "TRYK_U_B_RED_T_BG_BR", "TRYK_U_B_BLK_T_BG_WH", "TRYK_U_B_BLK_T_BK", "TRYK_U_B_RED_T_BR", "TRYK_U_B_BLK_T_WH", "TRYK_U_B_Denim_T_BG_BK", "TRYK_U_B_Denim_T_BG_WH", "TRYK_U_B_Denim_T_BK", "TRYK_U_B_Denim_T_WH"] call BIS_fnc_selectRandom;
player forceAddUniform _clothing;
_vest = ["milgp_v_mmac_teamleader_belt_cb", "milgp_v_mmac_teamleader_cb", "milgp_v_jpc_TeamLeader_cb", "milgp_v_jpc_teamleader_belt_cb"] call BIS_fnc_selectRandom;
player addVest _vest;
_pack = ["milgp_bp_Pointman_cb", "USP_ZIPON_PANEL_CBR"] call BIS_fnc_selectRandom;
player addBackpack _pack;
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_Clacker";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "B_IR_Grenade";
player addItem "ACE_bodyBag";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
player addItem "AMP_Breaching_Charge_Mag";
for "_i" from 1 to 2 do {player addItem "ACE_M84";};
player addItem "SmokeShell";
for "_i" from 1 to 3 do {player addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
for "_i" from 1 to 4 do {player addItem "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";};
player addItem "rhsusf_mag_17Rnd_9x19_FMJ";
_helmet = ["milgp_h_airframe_04_CB_hexagon", "milgp_h_airframe_04_CB", "milgp_h_airframe_04_goggles_CB_hexagon", "milgp_h_airframe_04_goggles_CB", "milgp_h_airframe_06_CB_hexagon", "milgp_h_airframe_06_CB", "milgp_h_airframe_06_goggles_CB_hexagon", "milgp_h_airframe_06_goggles_CB", "rhsusf_opscore_coy_cover_pelt", "milgp_h_opscore_04_CB_hexagon", "milgp_h_opscore_04_CB", "milgp_h_opscore_04_goggles_CB_hexagon", "milgp_h_opscore_04_goggles_CB", "milgp_h_opscore_05_CB_hexagon", "milgp_h_opscore_05_CB", "milgp_h_opscore_05_goggles_CB_hexagon", "milgp_h_opscore_05_goggles_CB", "milgp_h_opscore_06_CB_hexagon", "milgp_h_opscore_06_CB", "milgp_h_opscore_06_goggles_CB_hexagon", "milgp_h_opscore_06_goggles_CB", "USP_OPSCORE_FASTMTC_CBR_CMGSW", "USP_OPSCORE_FASTMTC_CBR_CMS", "USP_OPSCORE_FASTMTC_CBR_CMGTW", "USP_OPSCORE_FASTMTC_CBR_CMGSW"] call BIS_fnc_selectRandom;
player addHeadgear _helmet;
_goggles = ["rhsusf_shemagh2_od", "rhsusf_shemagh2_grn", "rhsusf_shemagh2_tan", "milgp_f_face_shield_BLK", "milgp_f_face_shield_CB", "milgp_f_face_shield_khk", "milgp_f_face_shield_MC", "milgp_f_face_shield_RGR", "milgp_f_face_shield_shemagh_BLK", "milgp_f_face_shield_shemagh_CB", "milgp_f_face_shield_shemagh_khk", "milgp_f_face_shield_shemagh_MC", "milgp_f_face_shield_shemagh_RGR"] call BIS_fnc_selectRandom;
player addGoggles _goggles;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
_nods = ["USP_GPNVG18_TAN", 0.25, "USP_PVS31", 0.50, "USP_PVS31_COMPACT", 0.50, "USP_PVS31_HIGH", 0.50, "USP_PVS31_LOW", 0.25, "USP_PVS15", 0.75] call BIS_fnc_selectRandomWeighted;
player linkItem _nods;

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're equipped as a special operations sniper for a private military company.";