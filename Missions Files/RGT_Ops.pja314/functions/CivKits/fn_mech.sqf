comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_array = ["U_C_Poor_1", "U_C_Mechanic_01_F"];
_suit = selectRandom _array;
player forceAddUniform _suit;
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
_array = ["G_Respirator_blue_F", "G_Respirator_white_F", "G_Respirator_yellow_F"];
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

hint "You're a mechanic.";