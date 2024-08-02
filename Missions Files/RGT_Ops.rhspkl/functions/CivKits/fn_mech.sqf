comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Create the arrays for different equipment";
_suit = [
	"U_C_Poor_1", 
	"U_C_Mechanic_01_F"] call BIS_fnc_selectRandom;
_mask = [
	"G_Respirator_blue_F", 
	"G_Respirator_white_F", 
	"G_Respirator_yellow_F"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _suit;
player addGoggles _mask;

comment "Fill Uniform and Gear";
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";


comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 2, true] call ace_common_fnc_assignObjectsInList;

hint "You're a mechanic.";