comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add containers";
_suit = ["U_C_ConstructionCoverall_Black_F", "U_C_ConstructionCoverall_Blue_F", "U_C_ConstructionCoverall_Red_F", "U_C_ConstructionCoverall_Vrana_F"] call BIS_fnc_selectRandom;
player forceAddUniform _suit;
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";
_vest = ["V_Safety_blue_F", "V_Safety_orange_F", "V_Safety_yellow_F"] call BIS_fnc_selectRandom;
player addVest _vest;
_head = ["H_Construction_basic_black_F", "H_Construction_earprot_black_F", "H_Construction_basic_orange_F", "H_Construction_earprot_orange_F", "H_Construction_basic_red_F", "H_Construction_earprot_red_F", "H_Construction_basic_vrana_F", "H_Construction_earprot_vrana_F", "H_Construction_basic_white_F", "H_Construction_earprot_white_F", "H_Construction_basic_yellow_F", "H_Construction_earprot_yellow_F"] call BIS_fnc_selectRandom;
player addHeadgear _head;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're a construction worker. Hooray!";