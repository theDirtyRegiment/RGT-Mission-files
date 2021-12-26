comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "rhsusf_weap_m9";

comment "Add containers";
player forceAddUniform "U_I_pilotCoveralls";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_MX991";
player addItem "Chemlight_green";
player addVest "V_Rangemaster_belt";
player addItem "H_Watchcap_camo";
player addItem "USP_PVS15";
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "rhsusf_mag_15Rnd_9x19_JHP";};
player addBackpack "B_AssaultPack_rgr";
player addItemToBackpack "ToolKit";
player addHeadgear "RHS_jetpilot_usaf";
player addGoggles "G_Aviator";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";



player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 0.55];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 2, true] call ace_common_fnc_assignObjectsInList;

hint "You're an Air Force pilot. \n \nYou even have the aviator glasses, because you were inverted. \n \nGo get 'em Maverick!";