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
player addPrimaryWeaponItem "rhs_acc_dtk1983";

comment "Add containers";
_uniform = ["rhs_uniform_emr_patchless", "rhs_uniform_vkpo", "rhs_uniform_vkpo_alt", "rhs_uniform_vkpo_gloves", "rhs_uniform_vkpo_gloves_alt"] call BIS_fnc_selectRandom;
player forceAddUniform _uniform;
_array = ["rhs_vydra_3m", "rhs_6b23_digi_crewofficer", "rhs_6b23_digi_crew"];
_vest = selectRandom _array;
player addVest _vest;
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
for "_i" from 1 to 3 do {player addItem "rhs_30Rnd_545x39_7N10_plum_AK";};
_array = ["rhs_tsh4", "rhs_tsh4_bala"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

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

hint "You're now a Russian armored vehicle crewman.";