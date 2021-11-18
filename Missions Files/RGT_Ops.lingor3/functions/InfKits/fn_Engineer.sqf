comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_rifle = ["rhs_weap_m4a1_blockII", 0.48, "rhs_weap_m4a1_blockII_d", 0.25, "rhs_weap_m4a1_blockII_KAC", 0.48, "rhs_weap_m4a1", 0.02, "rhs_weap_mk18", 0.02, "rhs_weap_m27iar", 0.02, "rhs_weap_m27iar_grip", 0.02] call BIS_fnc_selectRandomWeighted;
player addWeapon _rifle;
_array = ["rhsusf_acc_M952V", "acc_flashlight", "rhsusf_acc_wmx", "rhsusf_acc_wmx_bk"];
_rail = selectRandom _array;
player addPrimaryWeaponItem _rail;
_optic = ["rhsusf_acc_eotech_552", 0.70, "rhsusf_acc_compm4", 0.25, "rhsusf_acc_ACOG_RMR", 0.05] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;

comment "Add containers";
_array = ["milgp_u_g3_field_set_mc", "USP_PCU_G3C_MC", "USP_PCU_G3C_KP_MC", "USP_PCU_G3C_KP_MX_MC", "USP_PCU_G3C_KP_OR_MC", "USP_PCU_G3C_MX_MC", "USP_PCU_G3C_OR_MC", "USP_SOFTSHELL_G3C_MC", "USP_SOFTSHELL_G3C_KP_MC", "USP_SOFTSHELL_G3C_KP_MX_MC", "USP_SOFTSHELL_G3C_KP_OR_MC", "USP_SOFTSHELL_G3C_MX_MC", "USP_SOFTSHELL_G3C_OR_MC"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
player addVest "rhsusf_iotv_ocp_Repair";
_array = ["TRYK_B_BAF_BAG_mcamo", "USP_PATROL_PACK_CS_FH_ZT", "USP_PATROL_PACK_CB_CS_FH_RP_ZT", "USP_45L_RUCKSACK_MC"];
_bag = selectRandom _array;
player addBackpack _bag;
player addItem "ACE_EarPlugs";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_microDAGR";
player addItem "SmokeShell";
player addItem "HandGrenade";
player addItem "SmokeShellRed";
player addItem "ACE_EntrenchingTool";
_array = ["rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", "rhs_mag_30Rnd_556x45_M855A1_EPM", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855A1_Stanag"];
_ammo = selectRandom _array;
for "_i" from 1 to 7 do {player addItem _ammo;};
player addItem "ACE_Clacker";
player addItem "APERSMineDispenser_Mag";
player addItem "DemoCharge_Remote_Mag";
player addItem "SatchelCharge_Remote_Mag";
for "_i" from 1 to 2 do {player addItem "SLAMDirectionalMine_Wire_Mag";};
_array = ["rhsusf_ach_helmet_ocp_norotos", "rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ocp"];
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
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a combat engineer. \nNeed something blown up? Great! \nYou're equipped with a variety of explosives.";
