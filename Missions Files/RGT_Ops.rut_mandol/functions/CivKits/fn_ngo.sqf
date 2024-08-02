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
	"U_C_IDAP_Man_cargo_F", 
	"U_C_IDAP_Man_Jeans_F", 
	"U_C_IDAP_Man_casual_F", 
	"U_C_IDAP_Man_shorts_F", 
	"U_C_IDAP_Man_Tee_F", 
	"U_C_IDAP_Man_TeeShorts_F"] call BIS_fnc_selectRandom;
_vest = [
	"", 0.50,
	"V_Plain_medical_F", 0.17,
	"TRYK_V_Bulletproof_BL", 0.17,
	"TRYK_V_Bulletproof_BLK", 0.17,
	"TRYK_V_Bulletproof", 0.17,
	"V_Plain_crystal_F", 0.17] call BIS_fnc_selectRandomWeighted;
_hat = [
	"", 0.50,
	"H_Cap_Black_IDAP_F", 0.25,
	"H_Cap_Orange_IDAP_F", 0.25,
	"H_Cap_White_IDAP_F", 0.25] call BIS_fnc_selectRandomWeighted;
_bag = [
	"", 
	"B_Messenger_IDAP_F"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _suit;
player addVest _vest;
player addHeadgear _hat;
player addBackpack _bag;

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

hint "You're trying to save the world and help people, that don't want to be helped. \nYou're a member of a non-governmental organization.";