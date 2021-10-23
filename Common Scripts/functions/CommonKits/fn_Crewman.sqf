comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "milgp_u_g3_field_set_mc";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "B_IR_Grenade";
player addItemToUniform "Chemlight_green";
player addItemToUniform "ACE_Chemlight_IR";
player addItemToUniform "Chemlight_red";
player addVest "V_TacVest_oli";
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "FlareGreen_F";};
player addBackpack "B_AssaultPack_mcamo";
player addItemToBackpack "ToolKit";
player addItem "ACE_microDAGR";
_array = ["rhsusf_cvc_green_alt_helmet", "rhsusf_cvc_green_ess", "rhsusf_cvc_alt_helmet", "rhsusf_cvc_ess"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

comment "Add weapons";
player addWeapon "rhs_weap_m4a1_carryhandle";
player addPrimaryWeaponItem "rhsusf_acc_M952V";
player addWeapon "Ej_Flaregun";
player addWeapon "rhsusf_bino_m24_ARD";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 2, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a armored vehicle crewman. \nWreak havoc and let slip, the dogs of war.";