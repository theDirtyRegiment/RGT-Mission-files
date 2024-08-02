comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Create the arrays for different equipment";
_uniform = [
	"rhs_uniform_emr_patchless", 
	"rhs_uniform_vkpo", 
	"rhs_uniform_vkpo_alt", 
	"rhs_uniform_vkpo_gloves", 
	"rhs_uniform_vkpo_gloves_alt"] call BIS_fnc_selectRandom;
_vest = [
	"rhs_vydra_3m", 
	"rhs_6b23_digi_crewofficer", 
	"rhs_6b23_digi_crew"] call BIS_fnc_selectRandom;
_helmet = [
	"rhs_tsh4", 
	"rhs_tsh4_bala"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon "rhs_weap_aks74un";
player addPrimaryWeaponItem "rhs_acc_dtk1983";

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
for "_i" from 1 to 3 do {player addItem "rhs_30Rnd_545x39_7N10_plum_AK";};

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
[[player],"ACE_IsEngineer", 2, true] call ace_common_fnc_assignObjectsInList;

hint "You're now a Russian armored vehicle crewman.";