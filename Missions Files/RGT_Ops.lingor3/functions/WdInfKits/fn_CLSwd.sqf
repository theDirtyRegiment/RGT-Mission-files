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
	"rhs_weap_g36c", 0.30, 
	"rhs_weap_vhsd2", 0.10] call BIS_fnc_selectRandomWeighted;
_rail = [
	"rhsusf_acc_M952V", 
	"acc_flashlight", 
	"rhsusf_acc_wmx", 
	"rhsusf_acc_wmx_bk"] call BIS_fnc_selectRandom;
_grip = [
	"", 
	"rhsusf_acc_grip2", 
	"rhsusf_acc_grip2_tan", 
	"rhsusf_acc_grip2_wd"] call BIS_fnc_selectRandom;
_optic = [
	"rhsusf_acc_eotech_552", 0.70, 
	"rhsusf_acc_compm4", 0.25, 
	"rhsusf_acc_ACOG_RMR", 0.05] call BIS_fnc_selectRandomWeighted;
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
	"milgp_v_marciras_medic_rgr", 
	"milgp_v_marciras_medic_belt_rgr"] call BIS_fnc_selectRandom;
_helmet = [
	"rhsusf_ach_helmet_M81", 
	"rhsusf_ach_bare_wood", 
	"rhsusf_ach_bare_wood_ess", 
	"rhsusf_ach_bare_wood_headset", 
	"rhsusf_ach_bare_wood_headset_ess", 
	"rhsusf_ach_bare"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem _rail;
player addPrimaryWeaponItem _grip;
player addPrimaryWeaponItem _optic;

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack "TRYK_B_Medbag_BK";
player addHeadgear _helmet;

comment "Fill Uniform and Gear";
player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player addItem "ACE_CableTie";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "B_IR_Grenade";
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "HandGrenade";
player addItem "SmokeShellRed";
for "_i" from 1 to 7 do {player addItem "rhssaf_30rnd_556x45_EPR_G36";};

//Start of standard medical gear
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
player addItemToBackpack "ACE_bodyBag";
player addItemToBackpack "ACE_EntrenchingTool";
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
//End of Medical gear

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 1, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry medic. \nYour medical equipment and expertise is vital for your unit's survival.";