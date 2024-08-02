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
	"rhs_weap_ak74m_fullplum", 0.90, 
	"rhs_weap_ak74", 0.02, 
	"rhs_weap_ak74_2", 0.02, 
	"rhs_weap_ak74m", 0.02, 
	"rhs_weap_aks74", 0.02, 
	"rhs_weap_aks74_2", 0.02] call BIS_fnc_selectRandomWeighted;
_optic = [
	"rhs_acc_pkas", 
	"rhs_acc_ekp1", 
	"rhs_acc_1p63", 
	"rhs_acc_okp7_dovetail"] call BIS_fnc_selectRandom;
_uniform = [
	"rhs_uniform_emr_patchless", 
	"rhs_uniform_vkpo", 
	"rhs_uniform_vkpo_alt", 
	"rhs_uniform_vkpo_gloves", 
	"rhs_uniform_vkpo_gloves_alt"]call BIS_fnc_selectRandom;
_vest = [
	"rhs_6b45_rifleman", 0.60, 
	"rhs_6b45_rifleman_2", 0.60, 
	"rhs_6b23_6sh116", 0.10, 
	"rhs_6b23_digi_6sh92", 0.10, 
	"rhs_6b23_digi_6sh92_spetsnaz2", 0.10, 
	"rhs_6b23_digi_6sh92_headset", 0.10, 
	"rhs_6b23_digi_6sh92_headset_spetsnaz", 0.10, 
	"rhs_6b23_digi_6sh92_radio", 0.10, 
	"rhs_6b23_digi_6sh92_Spetsnaz", 0.10] call BIS_fnc_selectRandomWeighted;
_helmet = [
	"rhs_6b47", 
	"rhs_6b47_6m2", 
	"rhs_6b47_emr_2", 
	"rhs_6b47_emr_1", 
	"rhs_6b47_ess"] call BIS_fnc_selectRandom;


comment "Add Weapons and attachments";
player addWeapon _rifle;
switch(floor random 20) do {
	case 1: {
		player addPrimaryWeaponItem _optic;
	};
	default {};
};
player addPrimaryWeaponItem "rhs_acc_dtk1983";
player addWeapon "rhs_weap_rpg26";

comment "Add Uniforms and Gear";
player forceAddUniform _uniform;
player addVest _vest;
player addHeadgear _helmet;

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "O_IR_Grenade";
player addItem "Chemlight_green";
player addItem "rhs_mag_rdg2_white";
player addItem "rhs_mag_rdg2_black";
player addItem "ACE_microDAGR";
player addItem "ACE_EntrenchingTool";
for "_i" from 1 to 8 do {player addItem "rhs_30Rnd_545x39_7N10_plum_AK";};
player addItem "rhs_mag_f1";

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "rhs_1PN138";

player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now a Russian infantry rifleman, equipped with a disposable single-shot RPG-26, that is an extremely light and effective weapons against lightly armored vehicles, but is tricky to aim with.";