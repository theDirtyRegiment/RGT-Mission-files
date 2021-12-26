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
_clothes = ["milgp_u_g3_field_set_rolled_mc", "milgp_u_g3_field_set_mc"] call BIS_fnc_selectRandom;
player forceAddUniform _clothes;
player addItem "H_Cap_red";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_Chemlight_Shield";
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
player addItem "ACE_MapTools";
for "_i" from 1 to 2 do {player addItem "ACE_morphine";};
player addItem "ACE_Flashlight_MX991";
player addVest "V_TacVest_oli";
player addItem "rhsusf_mag_15Rnd_9x19_FMJ";
player addItem "ACE_Chemlight_HiRed";
for "_i" from 1 to 2 do {player addItem "ACE_Chemlight_IR";};
player addItem "Chemlight_green";
player addItem "B_IR_Grenade";
player addItem "ACE_HandFlare_Green";
player addItem "ACE_HandFlare_Red";
player addItem "SmokeShellYellow";
player addItem "SmokeShellRed";
for "_i" from 1 to 4 do {player addItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addItem "rhsusf_mag_15Rnd_9x19_JHP";
player addItem "rhsusf_mag_15Rnd_9x19_FMJ";
player addBackpack "B_AssaultPack_rgr";
player addItemToBackpack "ToolKit";
player addItem "ACE_microDAGR";
_helmet = ["rhsusf_hgu56p_mask_black", "rhsusf_hgu56p", "rhsusf_hgu56p_mask_green_mo", "rhsusf_hgu56p_mask_smiley", "rhsusf_hgu56p_white", "rhsusf_hgu56p_visor_white", "rhsusf_hgu56p_visor_black", "rhsusf_hgu56p_visor"] call BIS_fnc_selectRandom;
player addHeadgear _helmet;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
_nods = ["USP_PVS15", "rhsusf_ANPVS_15"] call BIS_fnc_selectRandom;
player linkItem _nods;


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 2, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a helicopter crewman.";