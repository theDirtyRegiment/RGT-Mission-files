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
player addWeapon "rhs_weap_m4_carryhandle";
player addWeapon "rhsusf_weap_m9";

comment "Add containers";
_array = ["milgp_u_g3_field_set_rolled_mc", "milgp_u_g3_field_set_mc"];
_clothes = selectRandom _array;
player forceAddUniform _clothes;
player addItemToUniform "H_Cap_red";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Chemlight_Shield";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_Flashlight_MX991";
player addVest "V_TacVest_oli";
player addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";
player addItemToVest "ACE_Chemlight_HiRed";
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_IR";};
player addItemToVest "Chemlight_green";
player addItemToVest "B_IR_Grenade";
player addItemToVest "ACE_HandFlare_Green";
player addItemToVest "ACE_HandFlare_Red";
player addItemToVest "SmokeShellYellow";
player addItemToVest "SmokeShellRed";
for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
player addItemToVest "rhsusf_mag_15Rnd_9x19_FMJ";
player addBackpack "B_AssaultPack_rgr";
player addItemToBackpack "ToolKit";
player addItem "ACE_microDAGR";
_array = ["rhsusf_hgu56p_mask_black", "rhsusf_hgu56p", "rhsusf_hgu56p_mask_green_mo", "rhsusf_hgu56p_mask_smiley", "rhsusf_hgu56p_white"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
_array = ["USP_PVS15", "rhsusf_ANPVS_15"];
_nods = selectRandom _array;
player linkItem _nods;


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 2, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a helicopter crewman.";