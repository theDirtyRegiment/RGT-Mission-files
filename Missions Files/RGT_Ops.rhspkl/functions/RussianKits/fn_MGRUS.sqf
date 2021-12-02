comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_array = ["rhs_weap_pkm", "rhs_weap_pkp"];
_rifle = selectRandom _array;
player addWeapon _rifle;

comment "Add containers";
_uniform = ["rhs_uniform_emr_patchless", "rhs_uniform_vkpo", "rhs_uniform_vkpo_alt", "rhs_uniform_vkpo_gloves", "rhs_uniform_vkpo_gloves_alt"] call BIS_fnc_selectRandom;
player forceAddUniform _uniform;
player addVest "rhs_6b45_mg";
player addBackpack "rhs_sidor";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "O_IR_Grenade";
player addItem "Chemlight_green";
player addItem "rhs_mag_rdg2_white";
player addItem "rhs_mag_rdg2_black";
player addItem "ACE_microDAGR";
player addItem "ACE_EntrenchingTool";
player addItem "rhs_mag_f1";
player addItem "rhs_100Rnd_762x54mmR";
for "_i" from 1 to 2 do {player addItem "rhs_100Rnd_762x54mmR_green";};
_array = ["rhs_6b47", "rhs_6b47_6m2", "rhs_6b47_emr_2", "rhs_6b47_emr_1", "rhs_6b47_ess"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "rhs_1PN138";

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now a Russian machine gunner. \nYour 7.62mm general-purpose machine gun is irreplacable in a medium to long range gunfight.";