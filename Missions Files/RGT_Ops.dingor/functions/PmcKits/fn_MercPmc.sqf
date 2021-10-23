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
player addWeapon "rhs_weap_g36kv";
player addPrimaryWeaponItem "rhsusf_acc_m952v";
_array = ["rhsusf_acc_eotech_552", "rhsusf_acc_compm4", "rhsgref_acc_rx01_nofilter_camo", "rhsgref_acc_rx01_camo", "rhsusf_acc_mrds", "rhsusf_acc_rm05", "rhsusf_acc_rx01_nofilter", "rhsusf_acc_rx01", "rhsusf_acc_rx01_tan", "rhsusf_acc_rx01_nofilter_tan", "rhsusf_acc_t1_low", "rhsusf_acc_t1_high"];
_optic = selectRandom _array;
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem "rhsusf_acc_grip2";
player addWeapon "rhsusf_weap_m1911a1";

comment "Add containers";
_array = ["TRYK_B_TRYK_UCP_T", "TRYK_U_B_PCUGs_BLK_R", "TRYK_U_B_PCUGs_gry_R", "TRYK_U_B_PCUGs_OD_R", "TRYK_U_B_PCUGs_BLK", "TRYK_U_B_Wood_PCUs_R", "TRYK_U_B_Wood_PCUs", "TRYK_U_B_PCUGs_gry", "TRYK_U_B_PCUGs_OD", "TRYK_U_B_AOR1_Rollup_CombatUniform", "TRYK_U_B_BLK_OD_Rollup_CombatUniform", "TRYK_U_B_BLK_tan_Rollup_CombatUniform", "TRYK_U_B_wh_tan_Rollup_CombatUniform", "TRYK_shirts_DENIM_BK", "TRYK_shirts_DENIM_BL", "TRYK_shirts_DENIM_BWH", "TRYK_shirts_DENIM_od", "TRYK_shirts_DENIM_R", "TRYK_shirts_DENIM_RED2", "TRYK_shirts_DENIM_WH", "TRYK_shirts_DENIM_WHB", "TRYK_shirts_DENIM_ylb", "TRYK_shirts_DENIM_od_Sleeve", "TRYK_shirts_DENIM_ylb_Sleeve", "TRYK_shirts_DENIM_BK_Sleeve", "TRYK_shirts_DENIM_BL_Sleeve", "TRYK_shirts_DENIM_BWH_Sleeve", "TRYK_shirts_DENIM_R_Sleeve", "TRYK_shirts_DENIM_RED2_Sleeve", "TRYK_shirts_DENIM_WH_Sleeve", "TRYK_shirts_DENIM_WHB_Sleeve", "TRYK_shirts_PAD_BK", "TRYK_shirts_BLK_PAD_BK", "TRYK_shirts_OD_PAD_BK", "TRYK_shirts_TAN_PAD_BK", "TRYK_shirts_PAD_BL", "TRYK_shirts_BLK_PAD_BL", "TRYK_shirts_OD_PAD_BL", "TRYK_shirts_TAN_PAD_BL", "TRYK_shirts_PAD_BLW", "TRYK_shirts_BLK_PAD_BLW", "TRYK_shirts_OD_PAD_BLW", "TRYK_shirts_TAN_PAD_BLW", "TRYK_shirts_PAD_BLU3", "TRYK_shirts_BLK_PAD_BLU3", "TRYK_shirts_OD_PAD_BLU3", "TRYK_shirts_PAD", "TRYK_shirts_BLK_PAD", "TRYK_shirts_PAD_RED2", "TRYK_shirts_BLK_PAD_YEL", "TRYK_U_pad_hood_Cl_blk", "TRYK_U_pad_hood_BKT2", "TRYK_U_pad_hood_tan", "TRYK_U_pad_hood_odBK", "TRYK_hoodie_3c", "TRYK_hoodie_FR", "TRYK_hoodie_Wood", "TRYK_U_hood_mc", "TRYK_U_hood_nc", "TRYK_T_BLK_PAD", "TRYK_T_TAN_PAD", "TRYK_T_T2_PAD", "TRYK_U_denim_hood_3c", "TRYK_U_denim_hood_blk", "TRYK_U_denim_hood_mc", "TRYK_U_denim_jersey_blk", "TRYK_U_pad_j_blk", "TRYK_T_camo_desert_marpat_BG", "TRYK_T_camo_Wood_BG", "TRYK_U_B_BLK_T_BG_BK", "TRYK_U_B_RED_T_BG_BR", "TRYK_U_B_BLK_T_BG_WH", "TRYK_U_B_BLK_T_BK", "TRYK_U_B_RED_T_BR", "TRYK_U_B_BLK_T_WH", "TRYK_U_B_Denim_T_BG_BK", "TRYK_U_B_Denim_T_BG_WH", "TRYK_U_B_Denim_T_BK", "TRYK_U_B_Denim_T_WH"];
_clothing = selectRandom _array;
player forceAddUniform _clothing;
_array = ["milgp_v_marciras_light_cb", "milgp_v_marciras_light_khk", "milgp_v_marciras_light_rgr", "TRYK_V_IOTV_BLK"];
_vest = selectRandom _array;
player addVest _vest;
_array = ["B_AssaultPack_blk", "B_AssaultPack_cbr", "B_AssaultPack_rgr", "B_AssaultPack_khk", "B_AssaultPack_sgg"];
_bag = selectRandom _array;
player AddBackpack _bag;
player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_Flashlight_XL50";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
for "_i" from 1 to 4 do {player addItem "rhsusf_mag_7x45acp_MHP";};
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "HandGrenade";
player addItem "SmokeShellGreen";
player addItem "SmokeShellRed";
for "_i" from 1 to 8 do {player addItem "rhssaf_30rnd_556x45_Tracers_G36";};
_array = ["TRYK_H_headset2", "TRYK_H_headsetcap_Glasses", "TRYK_H_headsetcap_blk_Glasses", "TRYK_H_headsetcap", "TRYK_H_headsetcap_blk", "TRYK_R_CAP_BLK", "TRYK_R_CAP_TAN", "TRYK_r_cap_blk_Glasses", "TRYK_r_cap_tan_Glasses", "TRYK_H_wig", "milgp_h_cap_01_CB", "milgp_h_cap_01_khk", "milgp_h_cap_01_MC", "milgp_h_cap_01_RGR", "milgp_h_cap_backwards_01_CB", "milgp_h_cap_backwards_01_khk", "milgp_h_cap_backwards_01_MC", "milgp_h_cap_backwards_01_RGR", "USP_BASEBALL_CAPB_CBR", "USP_BASEBALL_CAPB_DCU", "USP_BASEBALL_CAPB_KTBANSHEE", "USP_BASEBALL_CAPB_KTHIGHLANDER", "USP_BASEBALL_CAPB_KTNEPTUNE", "USP_BASEBALL_CAPB_M81", "USP_BASEBALL_CAPB_MCD", "USP_BASEBALL_CAPB_ATACSIX_B", "USP_BASEBALL_CAPB_KTBANSHEE_B", "USP_BASEBALL_CAPB_M81_B", "USP_BASEBALL_CAPB_AOR1_BD", "USP_BASEBALL_CAPB_AOR1_BD", "USP_BASEBALL_CAPB_KTHIGHLANDER_BD", "USP_BASEBALL_CAPB_BD", "USP_BASEBALL_CAPB_MCT_BD", "USP_BASEBALL_CAPB_CBR_BDS", "USP_BASEBALL_CAPB_RT2_BDS", "USP_BASEBALL_CAPB_AOR1_BS", "USP_BASEBALL_CAPB_MCB_BS", "USP_BASEBALL_CAPB_KTTYPHON_CD", "USP_BASEBALL_CAPB_MTP_CD", "USP_BASEBALL_CAPB_TGR_CD", "USP_BASEBALL_CAPB_KTNOMAD_CDS", "USP_BASEBALL_CAPB_MCB_CDS", "USP_BASEBALL_CAPB_KTHIGHLANDER_CG", "USP_BASEBALL_CAPB_KTPONTUS_CG", "USP_BASEBALL_CAPB_CT3_KTYETI", "USP_BASEBALL_CAPB_CT3_MCD", "USP_BASEBALL_CAPB_RT4_G", "USP_BASEBALL_CAPB_UCPD_G", "USP_BASEBALL_CAPB_MCT_J", "USP_BASEBALL_CAPB_RGR_J", "USP_BASEBALL_CAPB_RT2_J", "USP_BASEBALL_CAPB_ATACSAU_JS", "USP_BASEBALL_CAP_MTP_BP", "USP_BASEBALL_CAP_RT2_BP", "USP_BASEBALL_CAP_BJ", "USP_BASEBALL_CAP_MPW_BJ", "USP_BASEBALL_CAP_KTPONTUS_CGS", "USP_BASEBALL_CAP_CGS", "USP_BASEBALL_CAP_MCB_CGS", "USP_BASEBALL_CAP_CT3_RT6"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_rf7800str";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're a private military contractor. \nA mercenary. \nEquipped with only basic weapons and equpiment, your company hasn't given you the cool toys. \nYou still make too much money, though.";