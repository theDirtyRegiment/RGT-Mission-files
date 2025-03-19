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
_medbag = [
	"TRYK_B_Medbag_BK",
	"USP_DELTA_BAG_BLK",
	"USP_DELTA_BAG_MCB"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addBackpack _medbag;
player addHeadgear _helmet;


comment "Add Weapons and attachments";
player addWeapon "rhs_weap_akm";
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
player addItem "ACE_Clacker";
player addItem "ACE_microDAGR";
player addItem "Chemlight_green";
player addItem "Chemlight_red";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "SmokeShellBlue";
player addItem "ACE_M84";
for "_i" from 1 to 5 do {player addItem "rhs_30Rnd_762x39mm_89";};
player addItem "rhs_30Rnd_762x39mm_U";
player addItem "tsp_breach_linear_mag";
player addItem "rhs_30Rnd_762x39mm_89";

comment "Start of standard medical gear";
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
player addItemToBackpack "ACE_bodyBag";
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
comment "End of Medical gear";


comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 1, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're a paramilitary operations medic, wearing indigenous clothing and equipment in order pass for a middle easterner. \nWith your prior experience in SOF, you're an invaluable asset to your team of spies.";