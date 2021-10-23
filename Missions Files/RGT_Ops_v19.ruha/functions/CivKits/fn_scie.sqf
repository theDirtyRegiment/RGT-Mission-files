comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_array = ["U_C_Scientist", "LOP_U_CHR_Doctor_01"];
_suit = selectRandom _array;
player forceAddUniform _suit;
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
_array = ["", "H_Bandanna_blu", "", "H_Bandanna_sand", "", "H_Bandanna_surfer", "", "H_Bandanna_surfer_blk", "", "H_Bandanna_surfer_grn"];
_head = selectRandom _array;
player addHeadgear _head;
_array = ["G_Respirator_blue_F", "G_Respirator_white_F"];
_mask = selectRandom _array;
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