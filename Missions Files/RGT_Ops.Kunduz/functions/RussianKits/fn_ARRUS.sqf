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
_uniform = [
	"rhs_uniform_emr_patchless", 
	"rhs_uniform_vkpo", 
	"rhs_uniform_vkpo_alt", 
	"rhs_uniform_vkpo_gloves", 
	"rhs_uniform_vkpo_gloves_alt"] call BIS_fnc_selectRandom;
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
_backpack = [
	"rhs_rd54", 
	"rhs_rk_sht_30_emr", 
	"rhs_rk_sht_30_olive", 
	"rhs_assault_umbts"] call BIS_fnc_selectRandom;
_mag = [
	"rhs_45Rnd_545X39_7N10_AK", 0.95, 
	"rhs_60Rnd_545X39_7N10_AK", 0.05] call BIS_fnc_selectRandomWeighted;
_helmet = [
	"rhs_6b47", 
	"rhs_6b47_6m2", 
	"rhs_6b47_emr_2", 
	"rhs_6b47_emr_1", 
	"rhs_6b47_ess"] call BIS_fnc_selectRandom;
_rifle = [
	"rhs_weap_rpk74m",
	"rhs_weap_rpk_wood",
	"rhs_weap_rpk74_wood"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem "rhs_acc_dtkrpk";

comment "Add Uniforms and Gear";
player forceAddUniform _uniform;
player addVest _vest;
player addBackpack _backpack;
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
player addItem "rhs_mag_f1";
switch(_rifle) do {
	case "rhs_weap_rpk_wood": {
		for "_i" from 1 to 6 do {player addItem "rhs_75Rnd_762x39mm_tracer";};
	};
	default {
		switch(_mag) do {
			case "rhs_45Rnd_545X39_7N10_AK": {
				for "_i" from 1 to 10 do {player addItem "rhs_45Rnd_545X39_AK_Green";};
			};
			case "rhs_60Rnd_545X39_7N10_AK": {
				for "_i" from 1 to 8 do {player addItem "rhs_60Rnd_545X39_AK_Green";};		
			};
		};	
	};
};

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

hint "You're now a Russian infantry rifleman. \nYour equipment is optimized for long daylight short to medium range firefights.";