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
	"LOP_U_CHR_Functionary_01", 
	"LOP_U_CHR_Functionary_02", 
	"TRYK_SUITS_BLK_F", 
	"TRYK_SUITS_BR_F"] call BIS_fnc_selectRandom;
_bag = [
	"", 
	"B_Messenger_Black_F", 
	"B_Messenger_Gray_F"] call BIS_fnc_selectRandom;
_head = [
	"", 
	"TRYK_H_wig"] call BIS_fnc_selectRandom;

// Add Uniforms and Gear
player forceAddUniform _suit;
player addBackpack _bag;
player addHeadgear _head;

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

hint "Congratulations! You're a boring businessman.";