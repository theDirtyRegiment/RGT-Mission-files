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
_optic = [
	"rhsusf_acc_eotech_552", 0.25, 
	"rhsusf_acc_compm4", 0.25, 
	"rhsusf_acc_T1_high", 0.20, 
	"rhsusf_acc_eotech_xps3", 0.20, 
	"rhsusf_acc_su230a", 0.10] call BIS_fnc_selectRandomWeighted;
_clothing = [
	"milgp_u_pcu_g3_field_pants_mcalpine", 0.45, 
	"milgp_u_g3_field_set_mcalpine", 0.20, 
	"TRYK_U_B_PCUHsW4", 0.05, 
	"TRYK_U_B_PCUHsW", 0.05, 
	"milgp_u_fleece_grey_g3_field_pants_mcalpine", 0.05, 
	"ARD_MCAlpine_Camo_Cyre", 0.20] call BIS_fnc_selectRandomWeighted;
_vest = [
	"USP_EAGLE_MBAV_LOAD_MCA", 
	"V_PlateCarrier2_blk"] call BIS_fnc_selectRandom;
_helmet = [
	"USP_BASEBALL_CAP_MCA", 
	"TRYK_H_woolhat_CW", 
	"USP_BASEBALL_CAP_CT3O_KTYETI",
	"USP_BASEBALL_CAP_CT3O_MCA",
	"USP_BASEBALL_CAP_CT3_MCA",
	"USP_BASEBALL_CAP_CT3_KTYETI",
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
player addWeapon "rhs_weap_mk18_m320";
player addPrimaryWeaponItem "rhsusf_acc_rotex5_grey";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_top";
player addPrimaryWeaponItem _optic;
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_Clacker";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "SmokeShell";
for "_i" from 1 to 2 do {player addItem "ACE_M84";};
for "_i" from 1 to 5 do {player addItem "rhs_mag_M441_HE";};
for "_i" from 1 to 2 do {player addItem "rhs_mag_M397_HET";};
player addItem "SmokeShellRed";
player addItem "rhs_mag_m714_White";
player addItem "rhs_mag_m713_Red";
for "_i" from 1 to 2 do {player addItem "ACE_HuntIR_M203";};
for "_i" from 1 to 6 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_PMAG";};
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_HuntIR_monitor";
player addItemToBackpack "tsp_breach_linear_mag";
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
