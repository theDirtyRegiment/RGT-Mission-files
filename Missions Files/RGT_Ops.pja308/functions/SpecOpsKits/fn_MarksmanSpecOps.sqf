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
	"rhs_weap_sr25_ec_d",
	"rhs_weap_sr25_d", 
	"rhs_weap_mk17_STD"] call BIS_fnc_selectRandom;
_lam = [
	"rhsusf_acc_anpeq15", 
	"rhsusf_acc_anpeq15_wmx_sc", 
	"rhsusf_acc_anpeq15_wmx"] call BIS_fnc_selectRandom;
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
	"milgp_v_mmac_marksman_belt_MC", 
	"milgp_v_mmac_marksman_MC", 
	"milgp_v_jpc_marksman_mc", 
	"milgp_v_jpc_marksman_belt_mc", 
	"USP_CRYE_JPC_DM", "USP_CRYE_JPC_DMB"] call BIS_fnc_selectRandom;
_backpack = [
	"milgp_bp_Pointman_mc", 
	"USP_ZIPON_PANEL_MC", 
	"USP_PACK_FASTHAWK", 
	"USP_PACK_HYDRATION", 
	"USP_PACK_POINTMAN",
	"USP_ZIPON_PANEL_CPC_BC_SMK_MC",
	"USP_ZIPON_PACK_CPC_SM_MC"] call BIS_fnc_selectRandom;
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

comment "Add Weapons and attachments";
player addWeapon _rifle;
switch (_rifle) do {
	case "rhs_weap_sr25_ec_d": {
		player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
		player addPrimaryWeaponItem "rhsgref_sdn6_suppressor"; 
	};
	case "rhs_weap_sr25_d": {
		player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
		player addPrimaryWeaponItem "rhsusf_acc_sr25s_d"; 
	};
	case "rhs_weap_mk17_STD": {
		player addPrimaryWeaponItem _lam;
		player addPrimaryWeaponItem "rhsgref_sdn6_suppressor"; 
	};
};
player addPrimaryWeaponItem "optic_mrco";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack _backpack;
player addHeadgear _helmet;
player addGoggles _goggles;


comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
player addItem "ACE_bodyBag";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
player addItem "tsp_breach_linear_mag";
for "_i" from 1 to 2 do {player addItem _flash;};
player addItem "SmokeShell";
switch (_rifle) do {
	case "rhs_weap_mk17_STD": {
		for "_i" from 1 to 3 do {player addItem "rhs_mag_20Rnd_SCAR_762x51_mk316_special";};
		for "_i" from 1 to 2 do {player addItem "rhs_mag_20Rnd_SCAR_762x51_m61_ap";};
	};
	case "SMA_HK417_16in": {
		for "_i" from 1 to 7 do {player addItem "20Rnd_762x51_Mag";};
	};	
	default {
		for "_i" from 1 to 3 do {player addItem "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";};
		for "_i" from 1 to 2 do {player addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
	};
};
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_Clacker";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "B_IR_Grenade";

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

hint "You're now equipped as an special operations assault sniper. Your equipment is optimized for night-time medium-range engagements";