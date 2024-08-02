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
	"rhs_weap_m240B", 
	"rhs_weap_m240G", 
	"rhs_weap_fnmag"] call BIS_fnc_selectRandom;
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
	"rhsusf_spcs_ocp_saw", 
	"milgp_v_marciras_hgunner_mc", 
	"milgp_v_marciras_hgunner_belt_mc"] call BIS_fnc_selectRandom;
_helmet = [
	"rhsusf_ach_helmet_ocp_norotos", 
	"rhsusf_ach_helmet_camo_ocp", 
	"rhsusf_ach_helmet_headset_ess_ocp", 
	"rhsusf_ach_helmet_headset_ocp", 
	"rhsusf_ach_helmet_ESS_ocp", 
	"rhsusf_ach_helmet_ocp"] call BIS_fnc_selectRandom;
_nods = [
	"USP_PVS14",
	"USP_PVS14_TAR"] call BIS_fnc_selectRandom;
	
comment "Add Uniforms and Gear";
player forceAddUniform _uniform;
player addVest _vest;
player addHeadgear _helmet;
player addBackpack "USP_HYDRATION_PACK_MC";

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_ardec_m240";
player addWeapon "Binocular";
player addWeapon "rhsusf_weap_m9";

comment "Fill Uniform and Gear";
player addItem "ACE_EarPlugs";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_microDAGR";
player addItem "ACE_MapTools";
player addItem "B_IR_Grenade";
for "_i" from 1 to 3 do {player addItem "rhsusf_mag_15Rnd_9x19_JHP";};
player addItem "HandGrenade";
player addItem "ACE_EntrenchingTool";
player addItem "SmokeShell";
for "_i" from 1 to 3 do {player addItem "rhsusf_100Rnd_762x51_m62_tracer";};

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

hint "You're now equipped as a machine gunner. \nYour 7.62mm general-purpose machine gun is irreplacable in a medium to long range gunfight.";