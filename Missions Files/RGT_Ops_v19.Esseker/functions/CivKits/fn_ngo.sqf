comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_array = ["U_C_IDAP_Man_cargo_F", "U_C_IDAP_Man_Jeans_F", "U_C_IDAP_Man_casual_F", "U_C_IDAP_Man_shorts_F", "U_C_IDAP_Man_Tee_F", "U_C_IDAP_Man_TeeShorts_F"];
_suit = selectRandom _array;
player forceAddUniform _suit;
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
_array = ["", "V_Plain_medical_F", "", "TRYK_V_Bulletproof_BL", "", "TRYK_V_Bulletproof_BLK", "", "TRYK_V_Bulletproof", "", "V_Plain_crystal_F"];
_vest = selectRandom _array;
player addVest _vest;
_array = ["", "H_Cap_Black_IDAP_F", "", "H_Cap_Orange_IDAP_F", "", "H_Cap_White_IDAP_F"];
_hat = selectRandom _array;
player addHeadgear _hat;
_array = ["", "B_Messenger_IDAP_F"];
_bag = selectRandom _array;
player addBackpack _bag;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're trying to save the world and help people, that don't want to be helped. \nYou're a member of a non-governmental organization.";