comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_rifle = ["rhs_weap_m4a1_blockII", 0.48, "rhs_weap_m4a1_blockII_d", 0.25, "rhs_weap_m4a1_blockII_KAC", 0.48, "rhs_weap_m4a1", 0.02, "rhs_weap_mk18", 0.02] call BIS_fnc_selectRandomWeighted;
player addWeapon _rifle;
_array = ["rhsusf_acc_M952V", "acc_flashlight", "rhsusf_acc_wmx", "rhsusf_acc_wmx_bk"];
_rail = selectRandom _array;
player addPrimaryWeaponItem _rail;
_optic = ["rhsusf_acc_eotech_552", 0.70, "rhsusf_acc_compm4", 0.25, "rhsusf_acc_ACOG_RMR", 0.05] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;

comment "Add containers";
_array = ["milgp_u_g3_field_set_mc", "rhs_uniform_acu_ocp", "rhs_uniform_acu_oefcp"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
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
_vest = ["rhsusf_spcs_ocp_rifleman", 0.40, "rhsusf_spcs_ocp_rifleman_alt", 0.40, "milgp_v_marciras_assaulter_mc", 0.05, "milgp_v_marciras_assaulter_belt_mc", 0.05, "rhsusf_iotv_ocp_Rifleman", 0.10] call BIS_fnc_selectRandomWeighted;
player addVest _vest;
player addItemToVest "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellBlue";
_array = ["rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", "rhs_mag_30Rnd_556x45_M855A1_EPM", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855A1_Stanag"];
_ammo = selectRandom _array;
for "_i" from 1 to 8 do {player addItemToVest _ammo;};
_array = ["rhsusf_ach_helmet_ocp_norotos", "rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_ESS_ocp", "rhsusf_ach_helmet_ocp"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

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

hint "You're now equipped as an infantry rifleman. \nYour equipment is optimized for long daylight short to medium range firefights.";