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
	"U_C_Scientist", 
	"LOP_U_CHR_Doctor_01"] call BIS_fnc_selectRandom;
_head = [
	"", 0.50,
	"H_Bandanna_blu", 0.15,
	"H_Bandanna_sand", 0.15,
	"H_Bandanna_surfer", 0.15,
	"H_Bandanna_surfer_blk", 0.15,
	"H_Bandanna_surfer_grn", 0.15] call BIS_fnc_selectRandom;
_mask = [
	"G_Respirator_blue_F", 
	"G_Respirator_white_F"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _suit;
player addHeadgear _head;
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
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're a scientist. Good or evil? Up to you.";