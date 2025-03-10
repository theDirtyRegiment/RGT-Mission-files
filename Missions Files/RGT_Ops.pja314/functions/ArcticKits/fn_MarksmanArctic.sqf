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
	"rhs_weap_SCARH_LB", 
	"rhs_weap_sr25_ec"] call BIS_fnc_selectRandom;
_clothing = [
	"milgp_u_pcu_g3_field_pants_mcalpine", 0.45, 
	"milgp_u_g3_field_set_mcalpine", 0.20, 
	"TRYK_U_B_PCUHsW4", 0.05, 
	"TRYK_U_B_PCUHsW", 0.05, 
	"milgp_u_fleece_grey_g3_field_pants_mcalpine", 0.05, 
	"ARD_MCAlpine_Camo_Cyre", 0.20] call BIS_fnc_selectRandomWeighted;
_vest = [
	"USP_EAGLE_MBAV_LOAD_MCA", 
	"USP_CRYE_CPC_COMMS_MCA"] call BIS_fnc_selectRandom;
_helmet = [
	"USP_BASEBALL_CAP_MCA", 
	"USP_BASEBALL_CAP_CT3O_KTYETI",
	"USP_BASEBALL_CAP_CT3O_MCA",
	"USP_BASEBALL_CAP_CT3_MCA",
	"USP_BASEBALL_CAP_CT3_KTYETI",
	"TRYK_H_woolhat_CW",
	"USP_OPSCORE_FASTMTC_MCA_CGSW"] call BIS_fnc_selectRandom;
_facewear = [
	"rhsusf_shemagh_white", 
	"rhsusf_shemagh2_gogg_white", 
	"rhsusf_shemagh_white"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addHeadgear _helmet;
player addGoggles _facewear;
player addBackpack "TRYK_B_Coyotebackpack_WH";

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem "rhsusf_acc_aac_762sdn6_silencer";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
player addPrimaryWeaponItem "optic_MRCO";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Fill Uniform and Gear";
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
for "_i" from 1 to 2 do {player addItem "ACE_M84";};
player addItem "SmokeShell";
switch(_rifle) do {
	case "rhs_weap_SCARH_LB": {
		for "_i" from 1 to 2 do {player addItem "rhs_mag_20Rnd_SCAR_762x51_m61_ap_bk";};
		for "_i" from 1 to 3 do {player addItem "rhs_mag_20Rnd_SCAR_762x51_m80_ball_bk";};
	};
	case "rhs_weap_sr25_ec": {
		for "_i" from 1 to 2 do {player addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
		for "_i" from 1 to 3 do {player addItem "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";};
	};
};
player addItemToBackpack "rhsusf_ANPVS_14";

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
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;
