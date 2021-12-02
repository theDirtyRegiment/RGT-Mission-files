comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_suit = ["U_C_Man_casual_2_F", "U_C_Journalist", "U_C_Man_casual_3_F", "U_C_Man_casual_1_F"] call BIS_fnc_selectRandom;
player forceAddUniform _suit;
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";
_vest = ["", "V_Press_F"] call BIS_fnc_selectRandom;
player addVest _vest;
_hat = ["", "H_Cap_press", "", "rhsgref_helmet_pasgt_press", "", "H_PASGT_neckprot_blue_press_F"] call BIS_fnc_selectRandom;
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