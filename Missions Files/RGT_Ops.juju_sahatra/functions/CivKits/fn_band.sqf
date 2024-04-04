// Remove gear before applying loadouts
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

// Create the arrays for different equipment
_suit = [
	"LOP_U_CHR_Rocker_03", 
	"LOP_U_CHR_Rocker_04", 
	"LOP_U_CHR_Rocker_01", 
	"LOP_U_CHR_Rocker_02"] call BIS_fnc_selectRandom;

// Add Uniforms and Gear
player forceAddUniform _suit;

// Fill Uniform and Gear
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";

// Add final Gear
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

// Set G Force resistance and Medical + Engineer training
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're a member of a band.";