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
_helmet = [
	"rhsusf_cvc_green_alt_helmet", 
	"rhsusf_cvc_green_ess", 
	"rhsusf_cvc_alt_helmet", 
	"rhsusf_cvc_ess"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform "milgp_u_g3_field_set_mc";
player addBackpack "B_AssaultPack_mcamo";
player addHeadgear _helmet;

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "ACE_EntrenchingTool";
player addVest "V_TacVest_oli";
for "_i" from 1 to 5 do {player addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {player addItem "FlareGreen_F";};
player addItemToBackpack "ToolKit";
player addItem "ACE_microDAGR";

comment "Add Weapons and attachments";
player addWeapon "rhs_weap_m4a1_carryhandle";
player addPrimaryWeaponItem "rhsusf_acc_M952V";
player addWeapon "Ej_Flaregun";
player addWeapon "rhsusf_bino_m24_ARD";

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

hint "You're now equipped as a armored vehicle crewman. \nWreak havoc and let slip, the dogs of war.";