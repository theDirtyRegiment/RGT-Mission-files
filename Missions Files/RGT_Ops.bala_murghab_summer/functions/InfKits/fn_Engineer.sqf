comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
comment "Create the arrays for different equipment";
_rifle = [
	"rhs_weap_m4a1_blockII", 0.48, 
	"rhs_weap_m4a1_blockII_d", 0.25, 
	"rhs_weap_m4a1_blockII_KAC", 0.48, 
	"rhs_weap_m4a1", 0.3, 
	"rhs_weap_mk18", 0.02, 
	"rhs_weap_m27iar", 0.02,
	"rhs_weap_m4_urgi", 0.3,
	"rhs_weap_m4_urgi_kac", 0.3,
	"rhs_weap_m4_fsp", 0.48,
	"rhs_weap_mk18_urgi", 0.02,
	"rhs_weap_mk18_urgi_kac", 0.02] call BIS_fnc_selectRandomWeighted;
_rail = [
	"rhsusf_acc_M952V", 
	"acc_flashlight", 
	"rhsusf_acc_wmx", 
	"rhsusf_acc_wmx_bk"] call BIS_fnc_selectRandom;
_optic = [
	"rhsusf_acc_eotech_552", 0.70, 
	"rhsusf_acc_compm4", 0.25, 
	"rhsusf_acc_ACOG_RMR", 0.05] call BIS_fnc_selectRandomWeighted;
_uniform = [
	"milgp_u_g3_field_set_mc",
	"USP_G3F_MC",
	"USP_G3F_MX_MC",
	"USP_G3F_OR_MC",
	"USP_G3F_G3C_MC",
	"USP_G3F_G3C_KP_MC",
	"USP_G3F_G3C_KP_MX_MC",
	"USP_G3F_G3C_KP_OR_MC",
	"USP_G3F_G3C_MX_MC",
	"USP_G3F_G3C_OR_MC",
	"USP_PCU_G3C_MC", 
	"USP_PCU_G3C_KP_MC", 
	"USP_PCU_G3C_KP_MX_MC", 
	"USP_PCU_G3C_KP_OR_MC", 
	"USP_PCU_G3C_MX_MC", 
	"USP_PCU_G3C_OR_MC", 
	"USP_SOFTSHELL_G3C_MC", 
	"USP_SOFTSHELL_G3C_KP_MC", 
	"USP_SOFTSHELL_G3C_KP_MX_MC", 
	"USP_SOFTSHELL_G3C_KP_OR_MC", 
	"USP_SOFTSHELL_G3C_MX_MC", 
	"USP_SOFTSHELL_G3C_OR_MC"] call BIS_fnc_selectRandom;
_bag = [
	"TRYK_B_BAF_BAG_mcamo", 
	"USP_PATROL_PACK_CS_FH_ZT", 
	"USP_PATROL_PACK_CB_CS_FH_RP_ZT", 
	"USP_45L_RUCKSACK_MC"] call BIS_fnc_selectRandom;
_ammo = [
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", 
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", 
	"rhs_mag_30Rnd_556x45_M855A1_EPM", 
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", 
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", 
	"rhs_mag_30Rnd_556x45_M855A1_Stanag"] call BIS_fnc_selectRandom;
_helmet = [
	"rhsusf_ach_helmet_ocp_norotos", 
	"rhsusf_ach_helmet_camo_ocp", 
	"rhsusf_ach_helmet_headset_ess_ocp", 
	"rhsusf_ach_helmet_headset_ocp"] call BIS_fnc_selectRandom;
_nods = [
	"USP_PVS14",
	"USP_PVS14_TAR"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _uniform;
player addVest "rhsusf_iotv_ocp_Repair";
player addBackpack _bag;
player addHeadgear _helmet;


comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem _rail;
player addPrimaryWeaponItem _optic;
switch(_rifle) do {
	case "rhs_weap_m27iar": {
		player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
	};
	case "rhs_weap_m4a1_blockII_d": {
		_grip = ["", "rhsusf_acc_grip2_tan"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_m4_urgi": {
		_grip = ["rhs_acc_m4_urgi_d", 0.90, "rhs_acc_m4_urgi_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_m4a1": {
		_grip = ["rhsusf_acc_grip1", "rhsusf_acc_kac_grip", "rhsusf_acc_rvg_de"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_m4_urgi_kac": {
		_grip = ["rhs_acc_m4_urgi_d", 0.90, "rhs_acc_m4_urgi_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_mk18_urgi": {
		_grip = ["rhs_weap_mk18_urgi", 0.90, "rhs_acc_mk18_urgi_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_mk18_urgi_kac": {
		_grip = ["rhs_weap_mk18_urgi", 0.90, "rhs_acc_mk18_urgi_d_bcm", 0.10] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
	};
	default {
		_grip = ["", "rhsusf_acc_grip2"] call BIS_fnc_selectRandom;
		player addPrimaryWeaponItem _grip;
	};
};

comment "Fill Uniform and Gear";
player addItem "ACE_EarPlugs";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_microDAGR";
player addItem "SmokeShell";
player addItem "HandGrenade";
player addItem "SmokeShellRed";
player addItem "ACE_EntrenchingTool";
for "_i" from 1 to 7 do {player addItem _ammo;};
player addItem "ACE_Clacker";
player addItem "APERSMineDispenser_Mag";
player addItem "DemoCharge_Remote_Mag";
player addItem "SatchelCharge_Remote_Mag";
for "_i" from 1 to 2 do {player addItem "SLAMDirectionalMine_Wire_Mag";};

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
[[player],"ACE_IsEngineer", 2, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a combat engineer. \nNeed something blown up? Great! \nYou're equipped with a variety of explosives.";
