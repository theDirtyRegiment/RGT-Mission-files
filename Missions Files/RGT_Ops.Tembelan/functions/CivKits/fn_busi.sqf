comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_suit = ["LOP_U_CHR_Functionary_01", "LOP_U_CHR_Functionary_02", "TRYK_SUITS_BLK_F", "TRYK_SUITS_BR_F"] call BIS_fnc_selectRandom;
player forceAddUniform _suit;
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";
_bag = ["", "B_Messenger_Black_F", "B_Messenger_Gray_F"] call BIS_fnc_selectRandom;
player addBackpack _bag;
_head = ["", "TRYK_H_wig"] call BIS_fnc_selectRandom;
player addHeadgear _head;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "Congratulations! You're a boring businessman.";