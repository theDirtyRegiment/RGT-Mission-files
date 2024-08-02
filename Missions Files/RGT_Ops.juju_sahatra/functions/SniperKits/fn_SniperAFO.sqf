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
_rifle = [
	"rhs_weap_sr25_d", 0.7,
	"rhs_weap_m14_rail",  0.1,
	"rhs_weap_m14_rail_d", 0.1,
	"rhs_weap_m14_rail_fiberglass", 0.1,
	"rhs_weap_m14_rail_wd", 0.1] call BIS_fnc_selectRandomWeighted;
_vest = [
	"V_TacChestrig_grn_F",
	"V_TacChestrig_cbr_F",
	"V_TacChestrig_oli_F",
	"rhsgref_chestrig"] call BIS_fnc_selectRandom;
_pack = [
	"B_Kitbag_rgr",
	"B_Kitbag_cbr",
	"TRYK_B_BAF_BAG_OD",
	"TRYK_B_BAF_BAG_CYT",
	"B_Kitbag_tan",
	"rhssaf_kitbag_md2camo"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon _rifle;
switch(_rifle) do {
	case "rhs_weap_sr25_d": {
		player addPrimaryWeaponItem "rhsusf_acc_SR25S_d";
		player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
		player addPrimaryWeaponItem "rhsusf_acc_premier_mrds";
	};
	case "rhs_weap_m14_rail": {
		_bipod = ["rhsusf_acc_harris_swivel", "rhsusf_acc_m14_bipod"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _bipod;
		_optic = ["rhsusf_acc_M8541_mrds", "rhsusf_acc_M8541_low", "rhsusf_acc_premier_low", "rhsusf_acc_premier_mrds"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _optic;
	};
	case "rhs_weap_m14_rail_d": {
		_bipod = ["rhsusf_acc_harris_swivel", "rhsusf_acc_m14_bipod"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _bipod;
		player addPrimaryWeaponItem "rhsusf_acc_M8541_low_d";
	};
	case "rhs_weap_m14_rail_fiberglass": {
		_bipod = ["rhsusf_acc_harris_swivel", "rhsusf_acc_m14_bipod"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _bipod;
		_optic = ["rhsusf_acc_M8541_mrds", "rhsusf_acc_M8541_low", "rhsusf_acc_premier_low", "rhsusf_acc_premier_mrds"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _optic;		
	};
	case "rhs_weap_m14_rail_wd": {
		_bipod = ["rhsusf_acc_harris_swivel", "rhsusf_acc_m14_bipod"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _bipod;
		player addPrimaryWeaponItem "rhsusf_acc_M8541_low_wd";		
	};	
};
player addWeapon "rhsusf_weap_glock17g4";
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
player addItem "rhsusf_mag_17Rnd_9x19_FMJ";
player addItem "ACE_Chemlight_IR";
player addItem "rhsusf_mag_17Rnd_9x19_JHP";
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "HandGrenade";
switch(_rifle) do {
	case "rhs_weap_sr25_d": {
		for "_i" from 1 to 4 do {player addItem "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";};
		for "_i" from 1 to 3 do {player addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
		player addItem "rhsusf_acc_premier_anpvs27";
	};
	default {
		for "_i" from 1 to 4 do {player addItem "rhsusf_20Rnd_762x51_m118_special_Mag";};
		for "_i" from 1 to 3 do {player addItem "rhsusf_20Rnd_762x51_m993_Mag";};
	};
};
for "_i" from 1 to 2 do {player addItem "APERSTripMine_Wire_Mag";};

comment "Start of medical gear";
for "_i" from 1 to 10 do {player addItem "ACE_morphine";};
for "_i" from 1 to 10 do {player addItem "ACE_epinephrine";};
player addItem "ACE_plasmaIV";
player addItem "ACE_salineIV";
for "_i" from 1 to 2 do {player addItem "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItem "ACE_plasmaIV_500";};
player addItem "ACE_plasmaIV_250";
player addItem "ACE_salineIV_250";
player addItem "ACE_surgicalKit";
player addItem "ACE_personalAidKit";
for "_i" from 1 to 20 do {player addItem "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItem "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItem "ACE_quikclot";};
for "_i" from 1 to 7 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItem "ACE_adenosine";};
comment "End of Medical gear";

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";

player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 2, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're the sniper and medic of a 2-man advanced force operations sniper team. \nYou're equipped with everything needed for long range engagements and providing medical aid in an environment, where you need to blend in with the civilian populace.";