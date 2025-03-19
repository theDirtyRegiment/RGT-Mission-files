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
	"rhs_weap_hk416d10_LMT_d", 0.10,
	"rhs_weap_hk416d10_smr_tan", 0.25,
	"rhs_weap_hk416d10_smr_tan_kac", 0.25,
	"rhs_weap_mk18_urgi_kac", 0.50,
	"rhs_weap_mk18_urgi", 0.50,
	"rhs_weap_hk416d10_smr", 0.25] call BIS_fnc_selectRandomWeighted;
_muzzle = [
	"rhsusf_acc_rotex5_grey", 0.75, 
	"rhsusf_acc_rotex5_tan", 0.25] call BIS_fnc_selectRandomWeighted;
_lam = [
	"rhsusf_acc_anpeq15", 0.50, 
	"rhsusf_acc_anpeq15_bk", 0.25, 
	"rhsusf_acc_anpeq15_wmx", 0.25] call BIS_fnc_selectRandomWeighted;
_optic = [
	"rhsusf_acc_EOTECH", 0.50, 
	"rhsusf_acc_eotech_xps3", 0.15, 
	"rhsusf_acc_t1_high", 0.15, 
	"rhsusf_acc_g33_xps3_tan", 0.15, 
	"optic_mrco", 0.05] call BIS_fnc_selectRandomWeighted;
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
_grip5 = [
	"rhs_acc_mk18_nsr", 0.90, 
	"rhs_acc_mk18_nsr_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
_grip6 = [
	"rhs_acc_mk18_smr", 0.90, 
	"rhs_acc_mk18_smr_d", 0.10, 
	"rhs_acc_mk18_smr_bcm", 0.10, 
	"rhs_acc_mk18_smr_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
_grip7 = [
	"rhs_acc_mk18_urgi_d", 0.90, 
	"rhs_acc_mk18_urgi_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
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
	"milgp_v_mmac_assaulter_belt_MC", 
	"milgp_v_mmac_assaulter_MC", 
	"milgp_v_jpc_Assaulter_mc", 
	"milgp_v_jpc_assaulter_belt_mc", 
	"USP_CRYE_CPC_COMMS_MC", 
	"USP_CRYE_CPC_COMMS_BELT_MC", 
	"USP_CRYE_JPC_ASLTB", 
	"USP_CRYE_JPC_ASLT", 
	"USP_CRYE_NCPC_ASLT_AOR1", 
	"USP_VEST_STRANDHOGG2_MC", 
	"USP_VEST_PLATEFRAME_LOAD2_MC"] call BIS_fnc_selectRandom;
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
_LRR = [
	"USP_TACTICAL_PACK_CCT",
	"USP_TACTICAL_PACK_CCT5",
	"USP_TACTICAL_PACK_CCT6",
	"TFAR_rt1523g_sage"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem _muzzle;
player addPrimaryWeaponItem _lam;
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
	case "rhs_weap_mk18_urgi": {
		player addPrimaryWeaponItem _optic;
		player addPrimaryWeaponItem _grip7;
	};
	case "rhs_weap_mk18_urgi_kac": {
		player addPrimaryWeaponItem _optic;
		player addPrimaryWeaponItem _grip7;
	};
	case "rhs_weap_hk416d10_smr": {
		player addPrimaryWeaponItem _optic;
		player addPrimaryWeaponItem _grip6;
	};
};
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";
player addWeapon "ACE_Vector";

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack _LRR;
player addHeadgear _helmet;
player addGoggles _goggles;

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
for "_i" from 1 to 4 do {player addItem _ammo;};
player addItem "tsp_breach_linear_mag";
for "_i" from 1 to 2 do {player addItem _flash;};
player addItem "ACE_bodyBag";
player addItemToBackpack "Laserdesignator_03";
player addItemToBackpack "Laserbatteries";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_Clacker";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";

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

hint "You're now equipped as a SOF \nJoint Terminal Attack Controller. \nWith your equipment and know-how, you're the master of air-to-ground fire support.";