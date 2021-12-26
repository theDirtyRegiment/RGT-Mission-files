comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_suit = ["U_C_Scientist", "LOP_U_CHR_Doctor_01"] call BIS_fnc_selectRandom;
player forceAddUniform _suit;
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";
_head = ["", "H_Bandanna_blu", "", "H_Bandanna_sand", "", "H_Bandanna_surfer", "", "H_Bandanna_surfer_blk", "", "H_Bandanna_surfer_grn"] call BIS_fnc_selectRandom;
player addHeadgear _head;
_mask = ["G_Respirator_blue_F", "G_Respirator_white_F"] call BIS_fnc_selectRandom;
player addGoggles _mask;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're a scientist. Good or evil? Up to you.";