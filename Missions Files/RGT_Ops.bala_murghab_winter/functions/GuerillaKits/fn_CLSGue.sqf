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
	"U_I_C_Soldier_Bandit_3_F", 
	"LOP_U_BH_Fatigue_FWDL_LIZ", 
	"LOP_U_BH_Fatigue_GUE_M81_OLV", 
	"LOP_U_BH_Fatigue_OFI_LIZ", 
	"LOP_U_ChDKZ_Fatigue_01", 
	"LOP_U_ChDKZ_Fatigue_02", 
	"LOP_U_ChDKZ_Fatigue_03", 
	"LOP_U_ChDKZ_Fatigue_04", 
	"LOP_U_ChDKZ_Fatigue_Bardak", 
	"LOP_U_ChDKZ_Fatigue_Commander", 
	"LOP_U_IRA_Fatigue_HTR_DPM_J", 
	"LOP_U_NAPA_Fatigue_01", 
	"LOP_U_NAPA_Fatigue_02", 
	"LOP_U_NAPA_Fatigue_04", 
	"LOP_U_UA_Fatigue_03", 
	"LOP_U_AFR_Fatigue_03", 
	"U_BG_Guerilla2_2", 
	"U_BG_Guerilla2_1", 
	"U_BG_Guerilla2_3", 
	"U_BG_Guerilla3_1", 
	"U_BG_leader"] call BIS_fnc_selectRandom;
_helmet = [
	"TRYK_H_Bandana_wig", 
	"TRYK_R_CAP_BLK", 
	"TRYK_R_CAP_TAN", 
	"TRYK_H_woolhat", 
	"TRYK_H_woolhat_br", 
	"TRYK_H_Bandana_wig_g", 
	"TRYK_H_woolhat_cu", 
	"TRYK_H_woolhat_tan", 
	"TRYK_H_Booniehat_JSDF", 
	"LOP_H_Worker_cap", 
	"LOP_H_Villager_cap", 
	"LOP_H_Ushanka", 
	"LOP_H_SSh68Helmet_OLV", 
	"LOP_H_Cowboy_hat", 
	"LOP_H_Fieldcap_UKR", 
	"LOP_H_ChDKZ_Beret", 
	"H_Bandanna_surfer", 
	"rhsgref_bcap_specter", 
	"rhssaf_bandana_smb"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addBackpack "rhs_medic_bag";
player addHeadgear _helmet;


comment "Add Weapons and attachments";
player addWeapon "rhs_weap_m3a1_specops";
player addPrimaryWeaponItem "rhsgref_acc_rx01_camo";
player addWeapon "rhs_weap_tt33";

comment "Fill Uniform and Gear";
player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player addItem "ACE_CableTie";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_Flashlight_XL50";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addVest "rhsgref_alice_webbing";
for "_i" from 1 to 2 do {player addItem "rhs_mag_762x25_8";};
for "_i" from 1 to 5 do {player addItem "rhsgref_30rnd_1143x23_M1T_2mag_SMG";};
player addItem "ACE_bodyBag";
player addItem "ACE_SpraypaintRed";

comment "Start of standard medical gear";
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
player addItemToBackpack "ACE_plasmaIV";
player addItemToBackpack "ACE_salineIV";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_plasmaIV_500";};
player addItemToBackpack "ACE_plasmaIV_250";
player addItemToBackpack "ACE_salineIV_250";
player addItemToBackpack "ACE_surgicalKit";
player addItem "ACE_personalAidKit";
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItem "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItem "ACE_quikclot";};
for "_i" from 1 to 7 do {player addItem "ACE_tourniquet";};
comment "end of Medical gear";

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

hint "The rebels have trusted you to be their doctor in the field. \nYou attended veterinary school for 1 year, until you were kicked out, making you the medical specialist of the camp.";