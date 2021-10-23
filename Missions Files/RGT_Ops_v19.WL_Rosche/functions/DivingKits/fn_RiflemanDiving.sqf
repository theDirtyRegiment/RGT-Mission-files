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
player addWeapon "rhsusf_weap_MP7A2_grip3";
player addPrimaryWeaponItem "rhsusf_acc_rotex_mp7";
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
_array = ["rhsusf_acc_T1_high", "rhsusf_acc_eotech_xps3", "rhsusf_acc_mrds"];
_optic = selectRandom _array;
player addPrimaryWeaponItem _optic;
_array = ["rhs_acc_grip_ffg2", "rhsusf_acc_rvg_blk"];
_grip = selectRandom _array;
player addPrimaryWeaponItem _grip;
player addPrimaryWeaponItem "rhsusf_mag_40Rnd_46x30_FMJ";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";

comment "Add containers";
_array = ["USP_G3C_IST", "USP_G3C_IST_GRY", "USP_G3C_IST_MCB", "USP_G3C_IST_KP_MCB", "USP_G3C_IST_KP_MX_MCB", "USP_G3C_IST_OR", "USP_G3C_IST_MX_MCB", "USP_G3C_IST_OR_GRY"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
_array = ["V_RebreatherIA", "V_RebreatherB", "V_RebreatherIR"];
_vest = selectRandom _array;
player addVest _vest;
player addBackpack "TRYK_B_Kitbag_blk";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_IR_Strobe_Item";
player addItem "HandGrenade";
player addItem "SmokeShell";
for "_i" from 1 to 2 do {player addItem "rhsusf_mag_40Rnd_46x30_FMJ";};
player addItem "rhsusf_mag_40Rnd_46x30_JHP";
player addItem "rhsusf_mag_40Rnd_46x30_AP";
for "_i" from 1 to 2 do {player addItem "rhsusf_mag_17Rnd_9x19_JHP";};
player addItem "rhs_m72a7_mag";
for "_i" from 1 to 2 do {player addItem "20Rnd_556x45_UW_mag";};
player addItem "ACE_microDAGR";
player addItem "ACE_Clacker";
player addItem "arifle_SDAR_F";
player addItem "AMP_Breaching_Charge_Mag";
player addItem "ACE_M84";
player addItem "rhs_mag_an_m8hc";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "Chemlight_green";
player addItem "ACE_HandFlare_Green";
_array = ["rhsusf_opscore_bk_pelt", "rhsusf_opscore_mc_pelt_nsw", "milgp_h_opscore_05_MC", "milgp_h_airframe_06_MC", "milgp_h_opscore_04_MC", "milgp_h_opscore_05_goggles_MC", "milgp_h_opscore_04_goggles_MC", "milgp_h_opscore_03_MC", "milgp_h_opscore_03_goggles_MC", "USP_OPS_FASTXP_TAN_MC_08", "USP_OPS_FASTXP_BLK_MC_08", "USP_OPS_FASTXP_TAN_MC_07", "USP_OPS_FASTXP_BLK_MC_07", "USP_OPS_FASTXP_TAN_MC_06", "USP_OPS_FASTXP_BLK_MC_06", "USP_OPS_FASTXP_TAN_MC_05", "USP_OPS_FASTXP_BLK_MC_05", "USP_OPS_FASTXP_TAN_MC_04", "USP_OPS_FASTXP_BLK_MC_04", "USP_OPS_FASTXP_TAN_MC_03", "USP_OPS_FASTXP_BLK_MC_03"];
_helmet = selectRandom _array;
player addHeadgear _helmet;
player addGoggles "G_B_Diving";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
_nods = ["USP_GPNVG18_TAN", 0.25, "USP_PVS31", 0.75, "USP_PVS31_COMPACT", 0.50, "USP_PVS31_HIGH", 0.50, "USP_PVS31_LOW", 0.25, "USP_PVS15", 0.25] call BIS_fnc_selectRandomWeighted;
player linkItem _nods;


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're a hard-chargin' Navy SEAL. \nWith your wetsuit, rebreather and weapons, there's not many things you cannot handle.";