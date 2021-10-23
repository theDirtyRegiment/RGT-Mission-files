comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_rifle = ["rhs_weap_g36kv", 0.60, "rhs_weap_g36c", 0.30, "rhs_weap_vhsd2", 0.10] call BIS_fnc_selectRandomWeighted;
player addWeapon _rifle;
_array = ["rhsusf_acc_M952V", "acc_flashlight", "rhsusf_acc_wmx", "rhsusf_acc_wmx_bk"];
_rail = selectRandom _array;
player addPrimaryWeaponItem _rail;
_optic = ["rhsusf_acc_eotech_552", 0.70, "rhsusf_acc_compm4", 0.25, "rhsusf_acc_ACOG_RMR", 0.05] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
_array = ["", "rhsusf_acc_grip2", "rhsusf_acc_grip2_tan", "rhsusf_acc_grip2_wd"];
_grip = selectRandom _array;
player addPrimaryWeaponItem _grip;
player addWeapon "rhs_weap_fim92";
player addSecondaryWeaponItem "rhs_fim92_mag";

comment "Add containers";
_array = ["rhs_uniform_g3_m81", "rhs_uniform_bdu_erdl", "USP_PCU_G3C_MCT_M81", "USP_G3C_M81", "USP_G3C_CU_TSW", "USP_G3C_CU_KP_M81", "USP_G3C_CU_KP_MX_M81", "USP_G3C_CU_KP_OR_TSW", "USP_G3C_CU_MX_M81", "USP_G3C_CU_OR_M81", "USP_G3C_KP_TSW"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
player addItem "ACE_EarPlugs";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_MapTools";
player addItem "ACE_CableTie";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_microDAGR";
player addVest "rhsusf_iotv_ocp_Repair";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "ACE_EntrenchingTool";
player addItem "B_IR_Grenade";
for "_i" from 1 to 6 do {player addItem "rhssaf_30rnd_556x45_EPR_G36";};
_array = ["rhsusf_ach_helmet_M81", "rhsusf_ach_bare_wood", "rhsusf_ach_bare_wood_ess", "rhsusf_ach_bare_wood_headset", "rhsusf_ach_bare_wood_headset_ess", "rhsusf_ach_bare"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as anti air weapons specialist. \nKeep your eye to the sky!";