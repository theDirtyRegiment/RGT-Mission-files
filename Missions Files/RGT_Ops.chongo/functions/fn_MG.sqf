comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_array = ["rhs_weap_m240B", "rhs_weap_m240G"];
_weapon = selectRandom _array;
player addWeapon _weapon;
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
_optic = ["rhsusf_acc_ACOG_MDO", 0.50, "rhsusf_acc_elcan", 0.25, "rhsusf_acc_su230a_mrds_c", 0.12, "rhsusf_acc_su230a_c", 0.12] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem "rhsusf_acc_ardec_m240";
player addWeapon "Binocular";

comment "Add containers";
_array = ["milgp_u_g3_field_set_mc", "rhs_uniform_acu_ocp", "rhs_uniform_acu_oefcp"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "B_IR_Grenade";
for "_i" from 1 to 3 do {player addItemToUniform "rhsusf_mag_15Rnd_9x19_JHP";};
_array = ["rhsusf_spcs_ocp_saw", "milgp_v_marciras_hgunner_mc", "milgp_v_marciras_hgunner_belt_mc"];
_vest = selectRandom _array;
player addVest _vest;
player addItemToVest "HandGrenade";
player addItemToVest "ACE_EntrenchingTool";
player addItemToVest "SmokeShell";
for "_i" from 1 to 3 do {player addItemToVest "rhsusf_100Rnd_762x51_m62_tracer";};
_array = ["rhsusf_ach_helmet_ocp_norotos", "rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_ESS_ocp", "rhsusf_ach_helmet_ocp"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

player addWeapon "rhsusf_weap_m9";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
_array = ["rhsusf_ANPVS_14", "USP_PVS14"];
_nods = selectRandom _array;
player linkItem _nods;

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a machine gunner. \nYour 7.62mm general-purpose machine gun is irreplacable in a medium to long range gunfight.";