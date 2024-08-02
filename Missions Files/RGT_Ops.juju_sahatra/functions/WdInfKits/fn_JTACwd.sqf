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
_helmet = [
	"rhsusf_opscore_rg_cover_pelt", 
	"rhsusf_opscore_paint_pelt_nsw", 
	"rhsusf_opscore_fg_pelt_nsw", 
	"milgp_h_opscore_05_rgr", 
	"milgp_h_opscore_04_rgr", 
	"milgp_h_opscore_05_goggles_rgr_hexagon", 
	"milgp_h_opscore_04_goggles_rgr", 
	"milgp_h_opscore_03_rgr", 
	"milgp_h_opscore_03_goggles_rgr_hexagon"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem _grip;
player addWeapon "rhsusf_weap_m9";
player addWeapon "ACE_Vector";

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest "milgp_v_mmac_teamleader_rgr";
player addBackpack "TFAR_rt1523g_green";
player addHeadgear _helmet;

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "B_IR_Grenade";
player addItem "HandGrenade";
player addItem "ACE_EntrenchingTool";
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
for "_i" from 1 to 7 do {player addItem "rhssaf_30rnd_556x45_EPR_G36";};
player addItem "rhsusf_mag_15Rnd_9x19_FMJ";
player addItemToBackpack "Laserdesignator_03";
player addItemToBackpack "Laserbatteries";


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

hint "You're now equipped as an infantry \nJoint Terminal Attack Controller. \nWith your equipment and know-how, you're the master of air-to-ground fire support.";