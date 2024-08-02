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
	"rhs_weap_g36kv", 0.60, 
	"rhs_weap_vhsd2", 0.10] call BIS_fnc_selectRandomWeighted;
_optic = [
	"rhsusf_acc_su230_mrds_c", 0.25, 
	"rhsusf_acc_ACOG_RMR", 0.75] call BIS_fnc_selectRandomWeighted;
_grip = [
	"", 
	"rhsusf_acc_grip2", 
	"rhsusf_acc_grip2_tan", 
	"rhsusf_acc_grip2_wd"] call BIS_fnc_selectRandom;
_clothing = [
	"milgp_u_g3_field_set_rolled_mctropic", 0.75, 
	"milgp_u_g3_field_set_mctropic", 0.25, 
	"USP_G3C_RS_M81", 0.25, 
	"USP_G3C_RS_CU_KP_TSW", 0.25, 
	"USP_G3C_RS_CU_KP_MX_M81", 0.25, 
	"USP_G3C_RS_CU_KP_OR_M81", 0.25, 
	"USP_G3C_RS_CU_KP_OR_VQ_TSW", 0.25, 
	"USP_G3C_RS_KP_M81", 0.25, 
	"USP_G3C_RS2_M81", 0.25, 
	"USP_G3C_RS2_CU_TSW" , 0.25, 
	"USP_G3C_RS2_CU_KP_M81", 0.25, 
	"USP_G3C_RS2_CU_KP_MX_M81", 0.25, 
	"USP_G3C_RS2_CU_KP_OR_TSW", 0.25, 
	"USP_G3C_RS2_OR_VQ_M81", 0.25] call BIS_fnc_selectRandomWeighted;
_vest = [
	"milgp_v_marciras_teamleader_rgr", 
	"milgp_v_marciras_teamleader_belt_rgr"] call BIS_fnc_selectRandom;
_helmet = [
	"rhsusf_ach_helmet_M81", 
	"rhsusf_ach_bare_wood", 
	"rhsusf_ach_bare_wood_ess", 
	"rhsusf_ach_bare_wood_headset", 
	"rhsusf_ach_bare_wood_headset_ess", 
	"rhsusf_ach_bare"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem _grip;
player addWeapon "rhsusf_weap_m9";
player addWeapon "ACE_VectorDay";

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addHeadgear _helmet;

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "B_IR_Grenade";
player addItem "ACE_microDAGR";
player addItem "HandGrenade";
player addItem "ACE_EntrenchingTool";
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
for "_i" from 1 to 7 do {player addItem "rhssaf_30rnd_556x45_EPR_G36";};
for "_i" from 1 to 3 do {player addItem "rhsusf_mag_15Rnd_9x19_FMJ";};

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry commander. \nYour equipment is optimized to provide the leadership, that your team needs. \n \nPROs: Your team is equipped for fire-fights. \n \nCONs: Your team is limited in night-time capability.";