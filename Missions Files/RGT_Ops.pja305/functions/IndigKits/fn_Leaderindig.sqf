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
_clothing = [
	"TRYK_U_taki_BL", 
	"TRYK_U_taki_BLK", 
	"TRYK_U_taki_COY", 
	"TRYK_U_taki_wh", 
	"TRYK_U_taki_G_BL", 
	"TRYK_U_taki_G_BLK", 
	"TRYK_U_taki_G_COY", 
	"TRYK_U_taki_G_WH"] call BIS_fnc_selectRandom;
_vest = [
	"V_TacChestrig_oli_F", 
	"V_TacChestrig_cbr_F", 
	"V_TacChestrig_grn_F"] call BIS_fnc_selectRandom;
_helmet = [
	"TRYK_H_pakol2", 0.20, 
	"USP_PAKOL_HAT", 0.20, 
	"USP_PAKOL_HAT_DIRT", 0.20, 
	"USP_PAKOL_HAT_DUST", 0.20, 
	"LOP_H_Turban", 0.10, 
	"LOP_H_Turban_mask", 0.05, 
	"LOP_H_Worker_cap", 0.20, 
	"LOP_H_Shemag_OLV", 0.05, 
	"LOP_H_Shemag_BLK", 0.05, 
	"LOP_H_Shemag_BLU", 0.05, 
	"LOP_H_Shemag_GRE", 0.05, 
	"LOP_H_Shemag_RED1", 0.05, 
	"LOP_H_Shemag_RED2", 0.05, 
	"LOP_H_Shemag_TAN", 0.05] call BIS_fnc_selectRandomWeighted;

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack "TFAR_rt1523g_green";
player addHeadgear _helmet;


comment "Add Weapons and attachments";
player addWeapon "rhs_weap_akms";
player addPrimaryWeaponItem "rhs_acc_pbs1";
player addPrimaryWeaponItem "rhs_acc_2dpZenit";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItem "ACE_CableTie";};
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_Cellphone";
player addItem "ACE_microDAGR";
player addItem "ACE_IR_Strobe_Item";
player addItem "Chemlight_green";
player addItem "Chemlight_red";
player addItem "rhsusf_mag_17Rnd_9x19_JHP";
player addItem "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
player addItem "ACE_M84";
for "_i" from 1 to 3 do {player addItem "rhs_30Rnd_762x39mm_89";};
player addItem "tsp_breach_linear_mag";
for "_i" from 1 to 2 do {player addItem "rhs_30Rnd_762x39mm_89";};
player addItem "rhs_30Rnd_762x39mm_U";
player addItem "ACE_DefusalKit";
player addItem "IEDLandBig_Remote_Mag";


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

hint "You're a espionage team commander. Your team is equipped in middle eastern clothing and equipment. \n \nPROs: Use your sense of clothing style, stealth and use of IEDs to wreak havoc. \n \nCONs: You're team is not equipped to handle long drawn-out firefights.";