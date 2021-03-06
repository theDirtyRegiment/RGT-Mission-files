comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_suit = ["LOP_U_CHR_Villager_01", "LOP_U_CHR_Villager_04", "LOP_U_CHR_Villager_03", "LOP_U_CHR_Villager_02", "LOP_U_CHR_Worker_03", "LOP_U_CHR_Worker_04", "LOP_U_CHR_Worker_01", "LOP_U_CHR_Worker_02"] call BIS_fnc_selectRandom;
player forceAddUniform _suit;
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";
_hat = ["", "H_Cap_red", "", "H_Cap_oli", "", "H_Cap_grn", "", "H_Cap_blu", "", "H_Cap_blk", "", "milgp_h_cap_01_CB", "", "milgp_h_cap_01_khk", "", "milgp_h_cap_01_RGR", "", "rhs_beanie_green", "", "TRYK_H_woolhat", "", "TRYK_H_woolhat_br", "", "TRYK_H_woolhat_cu", "", "TRYK_H_woolhat_tan", "", "H_Hat_Safari_olive_F", "", "H_Hat_Safari_sand_F", "", "LOP_H_Cowboy_hat"] call BIS_fnc_selectRandom;
player addHeadgear _hat;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're a peasant. \nAct like it. \nAnd for god's sake...know your place.";