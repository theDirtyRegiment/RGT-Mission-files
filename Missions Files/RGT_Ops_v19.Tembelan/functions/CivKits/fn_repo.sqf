comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_array = ["U_C_Man_casual_2_F", "U_C_Journalist", "U_C_Man_casual_3_F", "U_C_Man_casual_1_F"];
_suit = selectRandom _array;
player forceAddUniform _suit;
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_Flashlight_XL50";
_array = ["", "V_Press_F"];
_vest = selectRandom _array;
player addVest _vest;
_array = ["", "H_Cap_press", "", "rhsgref_helmet_pasgt_press", "", "H_PASGT_neckprot_blue_press_F"];
_hat = selectRandom _array;
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

hint "You're a reporter. The second hated profession after politics.";