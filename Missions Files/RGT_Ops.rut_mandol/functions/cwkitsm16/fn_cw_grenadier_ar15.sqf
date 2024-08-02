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
	"rhs_uniform_bdu_erdl", 0.7, 
	"rhsgref_uniform_woodland", 0.1, 
	"rhsgref_uniform_ERDL", 0.1, 
	"rhsgref_uniform_og107_erdl", 0.1, 
	"rhsgref_uniform_woodland_olive", 0.1, 
	"rhs_uniform_afghanka_wdl", 0.05] call BIS_fnc_selectRandomWeighted;
_vest = [
	"rhsgref_alice_webbing", 0.40, 
	"rhsgref_chicom", 0.40, 
	"rhs_chicom_khk", 0.05, 
	"rhs_chicom", 0.05,
	"rhs_lifchik", 0.05,
	"rhs_lifchik_light", 0.05,
	"rhs_suspender_AK8_chestrig", 0.05] call BIS_fnc_selectRandomWeighted;
_helmet = [
	"rhsgref_helmet_M1_erdl", 0.70, 
	"rhsgref_helmet_M1_mit", 0.05, 
	"rhsgref_helmet_M1_bare", 0.05, 
	"rhsgref_helmet_M1_bare_alt01", 0.05, 
	"rhsgref_helmet_M1_painted", 0.10, 
	"rhsgref_helmet_M1_painted_alt01", 0.10] call BIS_fnc_selectRandomWeighted;
_ammo1 = [
	"rhs_mag_20Rnd_556x45_M193_Stanag", 0.2,
	"rhs_mag_20Rnd_556x45_M193_2MAG_Stanag", 0.2,
	"rhs_mag_20Rnd_556x45_M193_Stanag", 0.2,
	"rhs_mag_30Rnd_556x45_M193_Stanag", 0.4] call BIS_fnc_selectRandomWeighted;
_bag = [
	"rhsgref_hidf_alicepack",
	"rhsgref_ttsko_alicepack",
	"rhsgref_wdl_alicepack",
	"rhssaf_alice_md2camo",
	"rhssaf_alice_smb"] call BIS_fnc_selectRandom;
_frag = [
	"HandGrenade",
	"rhs_grenade_mkii_mag"] call BIS_fnc_selectRandom;
_smk = [
	"rhs_mag_an_m8hc",
	"rhs_grenade_m15_mag",
	"rhs_grenade_anm8_mag"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _uniform;
player addVest _vest;
player addBackpack "TRYK_B_Alicepack";
player addHeadgear _helmet;

comment "Add Weapons and attachments";
player addWeapon "rhs_weap_m16a2_m203";

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "ACE_EntrenchingTool";
player addItem _smk;
for "_i" from 1 to 2 do {player addItem _frag;};
for "_i" from 1 to 12 do {player addItem "rhs_mag_M441_HE";};
for "_i" from 1 to 2 do {player addItem "rhs_mag_m713_Red";};
for "_i" from 1 to 4 do {player addItem "rhs_mag_m714_White";};
for "_i" from 1 to 2 do {player addItem "rhs_mag_m715_Green";};
for "_i" from 1 to 2 do {player addItem "UGL_FlareWhite_F";};
for "_i" from 1 to 2 do {player addItem "ACE_HuntIR_M203";};
player addItem "ACE_HuntIR_monitor";
player addItem "ACE_CableTie";
switch (_ammo1) do {
	case "rhs_mag_30Rnd_556x45_M193_Stanag": {
		for "_i" from 1 to 10 do {player addItem "rhs_mag_30Rnd_556x45_M193_Stanag";};
	};
	case "rhs_mag_20Rnd_556x45_M193_Stanag": {
		for "_i" from 1 to 15 do {player addItem "rhs_mag_20Rnd_556x45_M193_Stanag";};
	};
	case "rhs_mag_20Rnd_556x45_M193_2MAG_Stanag": {
		for "_i" from 1 to 15 do {player addItem "rhs_mag_20Rnd_556x45_M193_2MAG_Stanag";};
	};
	case "rhs_mag_20Rnd_556x45_M193_Stanag": {
		for "_i" from 1 to 15 do {player addItem "rhs_mag_20Rnd_556x45_M193_Stanag";};
	};
};

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

hint "You're now equipped as an infantry grenadier. \nWith your 40mm UGL you can provide immediate light indirect fire support.";