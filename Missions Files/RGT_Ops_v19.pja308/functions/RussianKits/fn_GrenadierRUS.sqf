comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_rifle = ["rhs_weap_ak74m_fullplum_gp25", 0.90, "rhs_weap_ak74m_gp25", 0.05, "rhs_weap_ak74_gp25", 0.05] call BIS_fnc_selectRandomWeighted;
player addWeapon _rifle;
player addPrimaryWeaponItem "rhs_acc_dtk1983";

comment "Add containers";
_array = ["rhs_uniform_emr_patchless", "rhs_uniform_vkpo", "rhs_uniform_vkpo_alt", "rhs_uniform_vkpo_gloves", "rhs_uniform_vkpo_gloves_alt"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
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
_vest = ["rhs_6b45_grn", 0.60, "rhs_6b23_6sh116", 0.10, "rhs_6b23_digi_6sh92", 0.10, "rhs_6b23_digi_6sh92_spetsnaz2", 0.10, "rhs_6b23_digi_6sh92_headset", 0.10, "rhs_6b23_digi_6sh92_headset_spetsnaz", 0.10, "rhs_6b23_digi_6sh92_radio", 0.10, "rhs_6b23_digi_6sh92_Spetsnaz", 0.10] call BIS_fnc_selectRandomWeighted;
player addVest _vest;
player addItem "ACE_microDAGR";
player addItem "ACE_EntrenchingTool";
player addItem "rhs_mag_f1";
for "_i" from 1 to 6 do {player addItem "rhs_30Rnd_545x39_7N10_plum_AK";};
for "_i" from 1 to 10 do {player addItem "rhs_VOG25";};
for "_i" from 1 to 4 do {player addItem "rhs_VG40MD_White";};
for "_i" from 1 to 4 do {player addItem "rhs_VG40MD_Red";};
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

hint "You're now a Russian infantry grenadier. \nWith your 40mm UGL you can provide immediate light indirect fire support.";