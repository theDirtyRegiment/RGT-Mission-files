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
	"LOP_U_CHR_Villager_01", 
	"LOP_U_CHR_Villager_04", 
	"LOP_U_CHR_Villager_03", 
	"LOP_U_CHR_Villager_02", 
	"LOP_U_CHR_Worker_03", 
	"LOP_U_CHR_Worker_04", 
	"LOP_U_CHR_Worker_01", 
	"LOP_U_CHR_Worker_02"] call BIS_fnc_selectRandom;
_hat = [
	"", 0.50,
	"H_Cap_red", 0.10,
	"H_Cap_oli", 0.10,
	"H_Cap_grn", 0.10,
	"H_Cap_blu", 0.10,
	"H_Cap_blk", 0.10,
	"milgp_h_cap_01_CB", 0.10,
	"milgp_h_cap_01_khk", 0.10,
	"milgp_h_cap_01_RGR", 0.10,
	"rhs_beanie_green", 0.10,
	"TRYK_H_woolhat", 0.10,
	"TRYK_H_woolhat_br", 0.10,
	"TRYK_H_woolhat_cu", 0.10,
	"TRYK_H_woolhat_tan", 0.10,
	"H_Hat_Safari_olive_F", 0.10,
	"H_Hat_Safari_sand_F", 0.10,
	"LOP_H_Cowboy_hat", 0.10] call BIS_fnc_selectRandomWeighted;

comment "Add Uniforms and Gear";
player forceAddUniform _suit;
player addHeadgear _hat;

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

hint "You're a peasant. \nAct like it. \nAnd for god's sake...know your place.";