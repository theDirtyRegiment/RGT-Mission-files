comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_suit = ["U_C_IDAP_Man_cargo_F", "U_C_IDAP_Man_Jeans_F", "U_C_IDAP_Man_casual_F", "U_C_IDAP_Man_shorts_F", "U_C_IDAP_Man_Tee_F", "U_C_IDAP_Man_TeeShorts_F"] call BIS_fnc_selectRandom;
player forceAddUniform _suit;
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";
_vest = ["", "V_Plain_medical_F", "", "TRYK_V_Bulletproof_BL", "", "TRYK_V_Bulletproof_BLK", "", "TRYK_V_Bulletproof", "", "V_Plain_crystal_F"] call BIS_fnc_selectRandom;
player addVest _vest;
_hat = ["", "H_Cap_Black_IDAP_F", "", "H_Cap_Orange_IDAP_F", "", "H_Cap_White_IDAP_F"] call BIS_fnc_selectRandom;
player addHeadgear _hat;
_bag = ["", "B_Messenger_IDAP_F"] call BIS_fnc_selectRandom;
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