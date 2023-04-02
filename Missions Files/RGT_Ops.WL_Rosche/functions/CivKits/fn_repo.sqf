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
	"U_C_Man_casual_2_F", 
	"U_C_Journalist", 
	"U_C_Man_casual_3_F", 
	"U_C_Man_casual_1_F"] call BIS_fnc_selectRandom;
_vest = [
	"", 
	"V_Press_F"] call BIS_fnc_selectRandom;
_hat = [
	"", 0.50,
	"H_Cap_press", 0.15,
	"rhsgref_helmet_pasgt_press", 0.15,
	"H_PASGT_neckprot_blue_press_F", 0.15] call BIS_fnc_selectRandomWeighted;

// Add Uniforms and Gear
player forceAddUniform _suit;
player addVest _vest;
player addHeadgear _hat;

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

hint "You're a reporter. The second most hated profession after politics.";