comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_array = ["LOP_U_CHR_Profiteer_02", "LOP_U_CHR_Profiteer_03", "LOP_U_CHR_Profiteer_01", "LOP_U_CHR_Profiteer_04", "LOP_U_CHR_Citizen_03", "LOP_U_CHR_Citizen_04", "LOP_U_CHR_Citizen_01", "LOP_U_CHR_Citizen_02", "LOP_U_CHR_Citizen_06"];
_suit = selectRandom _array;
player forceAddUniform _suit;
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
_array = ["", "TRYK_H_wig"];
_head = selectRandom _array;
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

hint "You're a made man. \nA wise guy. \nA soldier of a mob family. \nFor you, loyalty and ruthlessness go hand-in-hand.";