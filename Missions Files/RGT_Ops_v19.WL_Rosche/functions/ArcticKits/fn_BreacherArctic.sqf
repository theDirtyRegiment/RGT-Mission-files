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
player addWeapon "rhs_weap_mk18_KAC_bk";
player addPrimaryWeaponItem "rhsusf_acc_rotex5_grey";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk";
_optic = ["rhsusf_acc_eotech_552", 0.25, "rhsusf_acc_compm4", 0.25, "rhsusf_acc_T1_high", 0.20, "rhsusf_acc_eotech_xps3", 0.20, "rhsusf_acc_su230_c", 0.10] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
player addWeapon "ACE_VMM3";

comment "Add containers";
_clothing = ["milgp_u_pcu_g3_field_pants_mcalpine", 0.45, "milgp_u_g3_field_set_mcalpine", 0.20, "TRYK_U_B_PCUHsW4", 0.05, "TRYK_U_B_PCUHsW", 0.05, "milgp_u_fleece_grey_g3_field_pants_mcalpine", 0.05, "ARD_MCAlpine_Camo_Cyre", 0.20] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "Chemlight_green";
player addItemToUniform "ACE_Chemlight_IR";
player addItemToUniform "Chemlight_red";
_array = ["USP_EAGLE_MBAV_LOAD_MCA", "V_PlateCarrier2_blk"];
_vest = selectRandom _array;
player addVest _vest;
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellRed";
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan";};
player addItemToVest "SmokeShell";
player addBackpack "TRYK_B_Coyotebackpack_WH";
player addItemToBackpack "ACE_EntrenchingTool";
player addItemToBackpack "ACE_wirecutter";
player addItemToBackpack "ACE_DefusalKit";
player addItemToBackpack "ACE_Clacker";
player addItemToBackpack "ACE_SpraypaintRed";
player addItemToBackpack "ACE_SpraypaintGreen";
for "_i" from 1 to 3 do {player addItemToBackpack "AMP_Breaching_Charge_Mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
player addItemToBackpack "rhsusf_ANPVS_14";
_array = ["USP_BASEBALL_CAP_MCA", "H_Watchcap_blk", "H_Watchcap_cbr", "H_Watchcap_camo", "H_Watchcap_khk", "TRYK_H_woolhat_CW","USP_OPSCORE_FASTMTC_MCA_MGW"];
_helmet = selectRandom _array;
player addHeadgear _helmet;
_array = ["rhsusf_shemagh_white", "rhsusf_shemagh2_gogg_white", "rhsusf_shemagh_white"];

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 2, true] call ace_common_fnc_assignObjectsInList;
