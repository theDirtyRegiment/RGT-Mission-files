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
	"rhs_weap_m38", 0.2,
	"rhs_weap_mosin_sbr", 0.7,
	"rhs_weap_kar98k", 0.1] call BIS_fnc_selectRandomWeighted;
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
player addHeadgear _helmet;
player addBackpack "B_AssaultPack_rgr";

comment "Add Weapons and attachments";
player addWeapon _rifle;
switch(_rifle) do {
	case "rhs_weap_mosin_sbr": {
		player addPrimaryWeaponItem "rhsgref_sdn6_suppressor";
		player addPrimaryWeaponItem "optic_mrco";
	};
};
player addWeapon "ACE_Vector";

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_Chemlight_IR";
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "rhs_mag_rdg2_white";};
player addItem "rhs_mag_rgd5";
switch(_rifle) do {
	case "rhs_weap_kar98k": {
		for "_i" from 1 to 15 do {player addItem "rhsgref_5Rnd_792x57_kar98k";};
	};
	default {
		for "_i" from 1 to 10 do {player addItem "rhsgref_5Rnd_762x54_m38";};
		for "_i" from 1 to 5 do {player addItem "rhsgref_5Rnd_762x54_m38";};
	};	
};
player addItem "rhs_18rnd_9x21mm_7BT3";
player addWeapon "rhs_weap_6p53";

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

hint "You're a hunter.";