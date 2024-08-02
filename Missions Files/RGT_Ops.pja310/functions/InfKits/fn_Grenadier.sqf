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
	"rhs_weap_m4a1_m203s", 0.70, 
	"rhs_weap_m4a1_blockII_M203", 0.10, 	
	"rhs_weap_m4a1_m203", 0.10, 
	"rhs_weap_mk18_m320", 0.10, 
	"rhs_weap_m4a1_m320", 0.10] call BIS_fnc_selectRandomWeighted;
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
_vest = [
	"rhsusf_spcs_ocp_grenadier", 0.70, 
	"rhsusf_iotv_ocp_Grenadier", 0.20, 
	"milgp_v_marciras_grenadier_mc", 0.05, 
	"milgp_v_marciras_grenadier_belt_mc", 0.05] call BIS_fnc_selectRandomWeighted;
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
	"rhsusf_ach_helmet_headset_ocp", 
	"rhsusf_ach_helmet_ESS_ocp", "rhsusf_ach_helmet_ocp"] call BIS_fnc_selectRandom;
_nods = [
	"USP_PVS14",
	"USP_PVS14_TAR"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _uniform;
player addVest _vest;
player addBackpack _bag;
player addHeadgear _helmet;

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem _rail;
player addPrimaryWeaponItem _optic;
switch(_rifle) do {
	case "rhs_weap_m4a1_m203s": {
		_grip = ["rhsusf_acc_grip_m203_blk", 0.1, "", 0.9] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_m4a1_m203": {
		_grip = ["rhsusf_acc_grip_m203_blk", 0.1, "", 0.9] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
	};
	case "rhs_weap_m4a1_blockII_M203": {
		_grip = ["rhsusf_acc_grip_m203_blk", 0.2, "rhsusf_acc_grip_m203_d", 0.1, "", 0.7] call BIS_fnc_selectRandomWeighted;
		player addPrimaryWeaponItem _grip;
	};
};

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
for "_i" from 1 to 8 do {player addItem "rhs_mag_M441_HE";};
player addItem "rhs_mag_m713_Red";
for "_i" from 1 to 2 do {player addItem "rhs_mag_m714_White";};
player addItem "rhs_mag_m715_Green";
player addItem "UGL_FlareWhite_F";
for "_i" from 1 to 2 do {player addItem "ACE_HuntIR_M203";};
for "_i" from 1 to 8 do {player addItem _ammo;};
player addItem "ACE_HuntIR_monitor";
player addItem "ACE_CableTie";

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

hint "You're now equipped as an infantry grenadier. \nWith your 40mm UGL you can provide immediate light indirect fire support.";