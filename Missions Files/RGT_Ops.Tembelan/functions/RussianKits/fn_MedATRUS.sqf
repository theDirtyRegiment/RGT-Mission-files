comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
player addWeapon "rhs_weap_aks74un";
player addPrimaryWeaponItem "rhs_acc_pgs64_74un";
player addWeapon "rhs_weap_rpg7";
player addSecondaryWeaponItem "rhs_acc_rpg7v_zeroing_100";
player addSecondaryWeaponItem "rhs_acc_pgo7v3";

comment "Add containers";
_array = ["rhs_uniform_emr_patchless", "rhs_uniform_vkpo", "rhs_uniform_vkpo_alt", "rhs_uniform_vkpo_gloves", "rhs_uniform_vkpo_gloves_alt"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
_array = ["rhs_6b23_6sh116", "rhs_6b23_digi_6sh92", "rhs_6b23_digi_6sh92_spetsnaz2", "rhs_6b23_digi_6sh92_headset", "rhs_6b23_digi_6sh92_headset_spetsnaz", "rhs_6b23_digi_6sh92_radio", "rhs_6b23_digi_6sh92_Spetsnaz"];
_vest = selectRandom _array;
player addVest _vest;
player addBackpack "rhs_rpg_empty";
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
for "_i" from 1 to 8 do {player addItem "rhs_30Rnd_545x39_7N10_plum_AK";};
player addItem "rhs_mag_f1";
for "_i" from 1 to 2 do {player addItem "rhs_rpg7_PG7V_mag";};
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

hint "You're now equipped as an anti-armor specialist, \narmed with an RPG-7, the notorious rocket-propelled grenade launcher.";