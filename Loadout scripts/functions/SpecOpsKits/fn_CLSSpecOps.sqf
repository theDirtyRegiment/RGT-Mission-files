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
	"rhs_weap_hk416d145_d", 0.90,
	"rhs_weap_hk416d15_smr_tan", 0.50,
	"rhs_weap_hk416d15_smr_tan_kac", 0.50,
	"rhs_weap_m4_nsr_d", 0.50,
	"rhs_weap_hk416d10_LMT_d", 0.05,
	"rhs_weap_hk416d10_smr_tan", 0.05,
	"rhs_weap_hk416d10_smr_tan_kac", 0.05,
	"rhs_weap_mk18_nsr_d", 0.05,
	"rhs_weap_mk18_nsr", 0.05,
	"rhs_weap_hk416d10_smr", 0.05] call BIS_fnc_selectRandomWeighted;
_muzzle = [
	"rhsusf_acc_rotex5_grey", 0.75, 
	"rhsusf_acc_rotex5_tan", 0.25] call BIS_fnc_selectRandomWeighted;
_lam = [
	"rhsusf_acc_anpeq15", 0.50, 
	"rhsusf_acc_anpeq15_bk", 0.25, 
	"rhsusf_acc_anpeq15_wmx", 0.25] call BIS_fnc_selectRandomWeighted;
_optic = [
	"rhsusf_acc_EOTECH", 0.40, 
	"rhsusf_acc_eotech_xps3", 0.10, 
	"rhsusf_acc_t1_high", 0.10, 
	"rhsusf_acc_g33_xps3_tan", 0.10, 
	"optic_mrco", 0.20] call BIS_fnc_selectRandomWeighted;
_grip = [
	"rhsusf_acc_rvg_de", 0.90, 
	"", 0.10, 
	"rhsusf_acc_grip2", 0.10, 
	"rhsusf_acc_grip2_tan", 0.10, 
	"rhsusf_acc_grip3", 0.10, 
	"rhsusf_acc_grip3_tan", 0.10] call BIS_fnc_selectRandomWeighted;
_grip1 = [
	"rhs_acc_mk18_smr_d", 0.90, 
	"rhs_acc_mk18_smr_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
_grip2 = [
	"rhs_acc_m4_smr_d", 0.90, 
	"rhs_acc_m4_smr_d_bcm", 0.10, 
	"rhs_acc_m4_smr", 0.10, 
	"rhs_acc_m4_smr_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
_grip3 = [
	"rhs_acc_mk18_nsr_d", 0.90, 
	"", 0.10, 
	"rhs_acc_mk18_nsr_d_bcm", 0.10, 
	"rhs_acc_mk18_nsr", 0.10, 
	"rhs_acc_mk18_nsr_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
_grip4 = [
	"rhs_acc_m4_nsr_d", 0.90, 
	"", 0.10, 
	"rhs_acc_m4_nsr13_d", 0.10, 
	"rhs_acc_m4_nsr_d_bcm", 0.10, 
	"rhs_acc_m4_nsr_bcm", 0.10, 
	"rhs_acc_m4_nsr", 0.10,
	"rhs_acc_m4_nsr13_d_bcm", 0.10,
	"rhs_acc_m4_nsr13_bcm", 0.10,
	"rhs_acc_m4_nsr13_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
_grip5 = [
	"rhs_acc_mk18_nsr", 0.90, 
	"rhs_acc_mk18_nsr_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
_grip6 = [
	"rhs_acc_mk18_smr", 0.90, 
	"rhs_acc_mk18_smr_d", 0.10, 
	"rhs_acc_mk18_smr_bcm", 0.10, 
	"rhs_acc_mk18_smr_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
_clothing = [
	"ARD_MC_Blk_Camo_Cyre", 0.60, 
	"ARD_MC_Blk_Camo_Cyre_SS", 0.30, 
	"ARD_MC_Camo_Cyre_TS", 0.10, 
	"USP_PCU_G3C_BLK_MC", 0.10, 
	"USP_PCU_G3C_KP_BLK_MC", 0.10, 
	"USP_PCU_G3C_KP_OR_MCB_MC", 0.10, 
	"USP_PCU_G3C_KP_MX_BLK_MC", 0.10, 
	"USP_SOFTSHELL_G3C_BLK_MC", 0.10, 
	"USP_PCU_G3C_KP_MX_MCB_MC", 0.10, 
	"USP_PCU_G3C_KP_MCB_MC", 0.10, 
	"USP_PCU_G3C_MCB_MC", 0.10, 
	"USP_SOFTSHELL_G3C_KP_BLK_MC", 0.10, 
	"USP_SOFTSHELL_G3C_BLK_MC", 0.10,
	"USP_RUGBY_G3C_BLK_MC", 0.05,
	"USP_RUGBY_G3C_CBR_MC", 0.05,
	"USP_RUGBY_G3C_KP_BLK_MC", 0.05,
	"USP_RUGBY_G3C_KP_MX_BLK_MC", 0.05,
	"USP_RUGBY_G3C_MX_CBR_MC", 0.05,
	"USP_G3C_CS_CU_OR_VQ_MC", 0.05,
	"USP_G3C_CS_MC", 0.05,
	"USP_G3C_CS_CU_MC", 0.05,
	"USP_G3C_CS_CU_KP_MC", 0.05,
	"USP_G3C_CS_CU_KP_MX_MC", 0.05,
	"USP_G3C_CS_CU_KP_OR_MC", 0.05,
	"USP_G3C_CS_CU_KP_VQ_MC", 0.05,
	"USP_G3C_CS_CU_MX_MC", 0.05,
	"USP_G3C_CS_CU_MX_VQ_MC", 0.05,
	"USP_G3C_CS_CU_VQ_MC", 0.05,
	"USP_G3C_CS_KP_MC", 0.05,
	"USP_G3C_CS_CU_KP_MX_VQ_MC", 0.05,
	"USP_G3C_CS_CU_KP_OR_VQ_MC", 0.05,
	"USP_G3C_CS_CU_OR_MC", 0.05,
	"USP_G3C_CS_KP_MX_MC", 0.05,
	"USP_G3C_CS_KP_OR_MC", 0.05,
	"USP_G3C_CS_KP_OR_VQ_MC", 0.05,
	"USP_G3C_CS_KP_VQ_MC", 0.05,
	"USP_G3C_CS_MX_MC", 0.05,
	"USP_G3C_CS_MX_VQ_MC", 0.05,
	"USP_G3C_CS_OR_MC", 0.05,
	"USP_G3C_CS_OR_VQ_MC", 0.05,
	"USP_G3C_CS_VQ_MC", 0.05] call BIS_fnc_selectRandomWeighted;
_vest = [
	"milgp_v_mmac_medic_belt_MC", 
	"milgp_v_mmac_medic_MC", 
	"milgp_v_jpc_Medic_mc", 
	"milgp_v_jpc_medic_belt_mc", 
	"USP_CRYE_CPC_MEDIC_MC", 
	"USP_CRYE_CPC_MEDIC_BELT_MC"] call BIS_fnc_selectRandom;
_ammo = [
	"rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan", 0.70, 
	"rhs_mag_30Rnd_556x45_Mk318_SCAR_Pull", 0.10, 
	"rhs_mag_30Rnd_556x45_Mk318_SCAR_Ranger", 0.10, 
	"rhs_mag_30Rnd_556x45_Mk318_SCAR", 0.10] call BIS_fnc_selectRandomWeighted;
_helmet = [
	"rhsusf_opscore_mc_cover_pelt_cam", 
	"rhsusf_opscore_mc_pelt_nsw", 
	"milgp_h_opscore_05_MC", 
	"milgp_h_airframe_06_MC", 
	"milgp_h_opscore_04_MC", 
	"milgp_h_opscore_05_goggles_MC", 
	"milgp_h_opscore_04_goggles_MC", 
	"milgp_h_opscore_03_MC", 
	"milgp_h_opscore_03_goggles_MC", 
	"USP_OPS_FASTXP_TAN_MC_08", 
	"USP_OPS_FASTXP_BLK_MC_08", 
	"USP_OPS_FASTXP_TAN_MC_07", 
	"USP_OPS_FASTXP_BLK_MC_07", 
	"USP_OPS_FASTXP_TAN_MC_06", 
	"USP_OPS_FASTXP_BLK_MC_06", 
	"USP_OPS_FASTXP_TAN_MC_05", 
	"USP_OPS_FASTXP_BLK_MC_05", 
	"USP_OPS_FASTXP_TAN_MC_04", 
	"USP_OPS_FASTXP_BLK_MC_04", 
	"USP_OPS_FASTXP_TAN_MC_03", 
	"USP_OPS_FASTXP_BLK_MC_03"] call BIS_fnc_selectRandom;
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
	"milgp_f_face_shield_shemagh_RGR", 
	"TRYK_kio_balaclavas", 
	"USP_GATORZ_BLK", 
	"USP_ok_detc_MC", 
	"USP_ok_detc_MC_EMB",
	"USP_ok_sisj_MC", 
	"USP_ok_sisj_MC_EMB",
	"USP_BEARD2_BRN6",
	"USP_BEARD_BRN4"] call BIS_fnc_selectRandom;
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
_flash = [
	"ACE_M84",
	"ACE_CTS9"] call BIS_fnc_selectRandom;
_medbag = [
	"TRYK_B_Medbag_BK",
	"USP_DELTA_BAG_BLK",
	"USP_DELTA_BAG_MCB"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon _rifle;
switch(_rifle) do {
	case "rhs_weap_hk416d145_d": {
		player addPrimaryWeaponItem "optic_mrco";
		player addPrimaryWeaponItem "rhsusf_acc_grip2_tan";
	};
	case "rhs_weap_hk416d15_smr_tan": {
		player addPrimaryWeaponItem "optic_mrco";
		player addPrimaryWeaponItem _grip2;
	};
	case "rhs_weap_hk416d15_smr_tan_kac": {
		player addPrimaryWeaponItem "optic_mrco";
		player addPrimaryWeaponItem _grip2;
	};
	case "rhs_weap_m4_nsr_d": {
		player addPrimaryWeaponItem "optic_mrco";
		player addPrimaryWeaponItem _grip4;
	};
	case "rhs_weap_hk416d10_LMT_d": {
		player addPrimaryWeaponItem _optic;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_hk416d10_smr_tan": {
		player addPrimaryWeaponItem _optic;
		player addPrimaryWeaponItem _grip1;
	};
	case "rhs_weap_hk416d10_smr_tan_kac": {
		player addPrimaryWeaponItem _optic;
		player addPrimaryWeaponItem _grip1;
	};
	case "rhs_weap_mk18_nsr_d": {
		player addPrimaryWeaponItem _optic;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_mk18_nsr": {
		player addPrimaryWeaponItem _optic;
		player addPrimaryWeaponItem _grip5;
	};
	case "rhs_weap_hk416d10_smr": {
		player addPrimaryWeaponItem _optic;
		player addPrimaryWeaponItem _grip6;
	};
};
player addPrimaryWeaponItem _muzzle;
player addPrimaryWeaponItem _lam;
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack _medbag;
player addHeadgear _helmet;
player addGoggles _goggles;

comment "Fill Uniform and Gear";
player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player addItem "ACE_CableTie";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "HandGrenade";
player addItem "SmokeShellGreen";
player addItem "SmokeShellRed";
for "_i" from 1 to 6 do {player addItem _ammo;};
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "ACE_IR_Strobe_Item";
player addItem "Chemlight_red";
for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};

comment "Start of standard medical gear";
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
player addItemToBackpack "ACE_bodyBag";
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
comment "end of Medical gear";

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

[[player],"ace_medical_medicClass", 2, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a SOF medic. \nKeep your guys safe and mission ready. \nYour weapon is also equipped for medium-range precision engagements";