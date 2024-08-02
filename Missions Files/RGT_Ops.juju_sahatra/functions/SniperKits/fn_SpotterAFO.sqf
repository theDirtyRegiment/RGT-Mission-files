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
	"TRYK_B_TRYK_UCP_T", 
	"TRYK_U_B_PCUGs_BLK_R", 
	"TRYK_U_B_PCUGs_gry_R", 
	"TRYK_U_B_PCUGs_OD_R", 
	"TRYK_U_B_PCUGs_BLK", 
	"TRYK_U_B_Wood_PCUs_R", 
	"TRYK_U_B_Wood_PCUs", 
	"TRYK_U_B_PCUGs_gry", 
	"TRYK_U_B_PCUGs_OD", 
	"TRYK_U_B_AOR1_Rollup_CombatUniform", 
	"TRYK_U_B_BLK_OD_Rollup_CombatUniform", 
	"TRYK_U_B_BLK_tan_Rollup_CombatUniform", 
	"TRYK_U_B_wh_tan_Rollup_CombatUniform", 
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
	"TRYK_shirts_PAD_BK", 
	"TRYK_shirts_BLK_PAD_BK", 
	"TRYK_shirts_OD_PAD_BK", 
	"TRYK_shirts_TAN_PAD_BK", 
	"TRYK_shirts_PAD_BL", 
	"TRYK_shirts_BLK_PAD_BL", 
	"TRYK_shirts_OD_PAD_BL", 
	"TRYK_shirts_TAN_PAD_BL", 
	"TRYK_shirts_PAD_BLW", 
	"TRYK_shirts_BLK_PAD_BLW", 
	"TRYK_shirts_OD_PAD_BLW", 
	"TRYK_shirts_TAN_PAD_BLW", 
	"TRYK_shirts_PAD_BLU3", 
	"TRYK_shirts_BLK_PAD_BLU3", 
	"TRYK_shirts_OD_PAD_BLU3", 
	"TRYK_shirts_PAD", 
	"TRYK_shirts_BLK_PAD", 
	"TRYK_shirts_PAD_RED2", 
	"TRYK_shirts_BLK_PAD_YEL", 
	"TRYK_U_pad_hood_Cl_blk", 
	"TRYK_U_pad_hood_BKT2", 
	"TRYK_U_pad_hood_tan", 
	"TRYK_U_pad_hood_odBK", 
	"TRYK_hoodie_3c", 
	"TRYK_hoodie_FR", 
	"TRYK_hoodie_Wood", 
	"TRYK_U_hood_mc", 
	"TRYK_U_hood_nc", 
	"TRYK_T_BLK_PAD", 
	"TRYK_T_TAN_PAD", 
	"TRYK_T_T2_PAD", 
	"TRYK_U_denim_hood_3c", 
	"TRYK_U_denim_hood_blk", 
	"TRYK_U_denim_hood_mc", 
	"TRYK_U_denim_jersey_blk", 
	"TRYK_U_pad_j_blk", 
	"TRYK_T_camo_desert_marpat_BG", 
	"TRYK_T_camo_Wood_BG", 
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
_ammo = [
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", 
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", 
	"rhs_mag_30Rnd_556x45_M855A1_EPM", 
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", 
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", 
	"rhs_mag_30Rnd_556x45_M855A1_Stanag"] call BIS_fnc_selectRandom;
_vest = [
	"V_TacChestrig_grn_F",
	"V_TacChestrig_cbr_F",
	"V_TacChestrig_oli_F",
	"rhsgref_chestrig"] call BIS_fnc_selectRandom;
_helmet = [
	"TRYK_H_headset2", 
	"TRYK_H_headsetcap_Glasses", 
	"TRYK_H_headsetcap_blk_Glasses", 
	"TRYK_H_headsetcap", 
	"TRYK_H_headsetcap_blk", 
	"TRYK_R_CAP_BLK", 
	"TRYK_R_CAP_TAN",
	"TRYK_r_cap_blk_Glasses", 
	"TRYK_r_cap_tan_Glasses", 
	"TRYK_H_wig", 
	"milgp_h_cap_01_CB", 
	"milgp_h_cap_01_khk", 
	"milgp_h_cap_01_MC", 
	"milgp_h_cap_01_RGR", 
	"milgp_h_cap_backwards_01_CB", 
	"milgp_h_cap_backwards_01_khk", 
	"milgp_h_cap_backwards_01_MC", 
	"milgp_h_cap_backwards_01_RGR", 
	"USP_BASEBALL_CAPB_CBR", 
	"USP_BASEBALL_CAPB_DCU", 
	"USP_BASEBALL_CAPB_KTBANSHEE", 
	"USP_BASEBALL_CAPB_KTHIGHLANDER", 
	"USP_BASEBALL_CAPB_KTNEPTUNE", 
	"USP_BASEBALL_CAPB_M81", 
	"USP_BASEBALL_CAPB_MCD", 
	"USP_BASEBALL_CAPB_ATACSIX_B", 
	"USP_BASEBALL_CAPB_KTBANSHEE_B", 
	"USP_BASEBALL_CAPB_M81_B", 
	"USP_BASEBALL_CAPB_AOR1_BD", 
	"USP_BASEBALL_CAPB_AOR1_BD", 
	"USP_BASEBALL_CAPB_KTHIGHLANDER_BD", 
	"USP_BASEBALL_CAPB_BD", 
	"USP_BASEBALL_CAPB_MCT_BD", 
	"USP_BASEBALL_CAPB_CBR_BDS", 
	"USP_BASEBALL_CAPB_RT2_BDS", 
	"USP_BASEBALL_CAPB_AOR1_BS", 
	"USP_BASEBALL_CAPB_MCB_BS", 
	"USP_BASEBALL_CAPB_KTTYPHON_CD", 
	"USP_BASEBALL_CAPB_MTP_CD", 
	"USP_BASEBALL_CAPB_TGR_CD", 
	"USP_BASEBALL_CAPB_KTNOMAD_CDS", 
	"USP_BASEBALL_CAPB_MCB_CDS", 
	"USP_BASEBALL_CAPB_KTHIGHLANDER_CG", 
	"USP_BASEBALL_CAPB_KTPONTUS_CG", 
	"USP_BASEBALL_CAPB_CT3_KTYETI", 
	"USP_BASEBALL_CAPB_CT3_MCD", 
	"USP_BASEBALL_CAPB_RT4_G", 
	"USP_BASEBALL_CAPB_UCPD_G", 
	"USP_BASEBALL_CAPB_MCT_J", 
	"USP_BASEBALL_CAPB_RGR_J", 
	"USP_BASEBALL_CAPB_RT2_J", 
	"USP_BASEBALL_CAPB_ATACSAU_JS", 
	"USP_BASEBALL_CAP_MTP_BP", 
	"USP_BASEBALL_CAP_RT2_BP", 
	"USP_BASEBALL_CAP_BJ", 
	"USP_BASEBALL_CAP_MPW_BJ", 
	"USP_BASEBALL_CAP_KTPONTUS_CGS", 
	"USP_BASEBALL_CAP_CGS", 
	"USP_BASEBALL_CAP_MCB_CGS", 
	"USP_BASEBALL_CAP_CT3_RT6"] call BIS_fnc_selectRandom;
_grip = [
	"", 0.9,
	"rhsusf_acc_grip_m203_blk", 0.1,
	"rhsusf_acc_grip_m203_d", 0.2] call BIS_fnc_selectRandomWeighted;
_optic = [
	"rhsusf_acc_su230_mrds_c", 0.1,
	"rhsusf_acc_ACOG_d", 0.8,
	"rhsusf_acc_su230_c", 0.1] call BIS_fnc_selectRandomWeighted;
_pack = [
	"TFAR_rt1523g_green",
	"USP_TACTICAL_PACK_MCT_CCT",
	"USP_TACTICAL_PACK_MCB_CCT",
	"USP_TACTICAL_PACK_MCT_CCT2",
	"USP_TACTICAL_PACK_MCB_CCT2",
	"USP_TACTICAL_PACK_MCT_CCT3",
	"USP_TACTICAL_PACK_MCB_CCT3",
	"USP_TACTICAL_PACK_MCT_CCT4",
	"USP_TACTICAL_PACK_MCB_CCT4"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon "rhs_weap_m4a1_m203s_d";
player addPrimaryWeaponItem "rhsusf_acc_nt4_tan";
player addPrimaryWeaponItem _grip;
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
player addPrimaryWeaponItem _optic;
player addWeapon "ACE_Vector";

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack _pack;
player addHeadgear _helmet;

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_ATragMX";
player addItem "ACE_Kestrel4500";
player addItem "ACE_RangeCard";
player addItem "B_IR_Grenade";
player addItem "ACE_Chemlight_IR";
player addItem "ACE_DefusalKit";
player addItem "ACE_microDAGR";
for "_i" from 1 to 8 do {player addItem "rhs_mag_M441_HE";};
player addItem "1Rnd_SmokeRed_Grenade_shell";
player addItem "1Rnd_Smoke_Grenade_shell";
for "_i" from 1 to 9 do {player addItem _ammo;};
player addItem "ACE_SpottingScope";
player addItem "APERSBoundingMine_Range_Mag";
for "_i" from 1 to 2 do {player addItem "APERSTripMine_Wire_Mag";};

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're the spotter, radioman and team leader of a advanced force operations sniper team. \nYou're equipped with 40mm UGL, tripwire mines and a defusal kit for added firepower and security in an environment, where you need to blend in with the civilian populace.";