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
_optic = ["rhsusf_acc_eotech_552", 0.25, "rhsusf_acc_T1_high", 0.20, "rhsusf_acc_eotech_xps3", 0.20, "rhsusf_acc_su230_c", 0.10] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addWeapon "ACE_Vector";

comment "Add containers";
_clothing = ["milgp_u_pcu_g3_field_pants_mcalpine", 0.45, "milgp_u_g3_field_set_mcalpine", 0.20, "TRYK_U_B_PCUHsW4", 0.05, "TRYK_U_B_PCUHsW", 0.05, "milgp_u_fleece_grey_g3_field_pants_mcalpine", 0.05, "ARD_MCAlpine_Camo_Cyre", 0.20] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_Clacker";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";
_array = ["USP_EAGLE_MBAV_LOAD_MCA", "V_PlateCarrier2_blk"];
_vest = selectRandom _array;
player addVest _vest;
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addItemToVest "SmokeShell";
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellBlue";
for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan";};
player addItemToVest "AMP_Breaching_Charge_Mag";
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};
player addBackpack "TFAR_rt1523g_black";
player addItemToBackpack "ACE_bodyBag";
player addItemToBackpack "rhsusf_ANPVS_14";
_array = ["USP_BASEBALL_CAP_MCA", "H_Watchcap_blk", "H_Watchcap_cbr", "H_Watchcap_camo", "H_Watchcap_khk", "TRYK_H_woolhat_CW","USP_OPSCORE_FASTMTC_MCA_MGW"];
_helmet = selectRandom _array;
player addHeadgear _helmet;
player addGoggles "rhsusf_shemagh_white";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;