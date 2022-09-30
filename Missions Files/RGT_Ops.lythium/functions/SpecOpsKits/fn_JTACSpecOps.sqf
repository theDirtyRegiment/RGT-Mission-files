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
player addWeapon "rhs_weap_hk416d10_LMT_d";
_muzzle = ["rhsusf_acc_rotex5_grey", 0.75, "rhsusf_acc_rotex5_tan", 0.25] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _muzzle;
_lam = ["rhsusf_acc_anpeq15", 0.50, "rhsusf_acc_anpeq15_bk", 0.25, "rhsusf_acc_anpeq15_wmx", 0.25] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _lam;
_optic = ["rhsusf_acc_EOTECH", 0.65, "rhsusf_acc_eotech_xps3", 0.10, "rhsusf_acc_t1_high", 0.05, "rhsusf_acc_g33_xps3_tan", 0.10, "optic_mrco", 0.10] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
_grip = ["rhsusf_acc_rvg_de", 0.90, "", 0.10, "rhsusf_acc_grip2", 0.02, "rhsusf_acc_grip2_tan", 0.02, "rhsusf_acc_grip3", 0.02, "rhsusf_acc_grip3_tan", 0.02] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _grip;
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";
player addWeapon "ACE_Vector";

comment "Add containers";
_clothing = ["ARD_MC_Blk_Camo_Cyre", 0.60, "ARD_MC_Blk_Camo_Cyre_SS", 0.30, "ARD_MC_Camo_Cyre_TS", 0.10, "USP_PCU_G3C_BLK_MC", 0.10, "USP_PCU_G3C_KP_BLK_MC", 0.10, "USP_PCU_G3C_KP_OR_MCB_MC", 0.10, "USP_PCU_G3C_KP_MX_BLK_MC", 0.10, "USP_SOFTSHELL_G3C_BLK_MC", 0.10, "USP_PCU_G3C_KP_MX_MCB_MC", 0.10, "USP_PCU_G3C_KP_MCB_MC", 0.10, "USP_PCU_G3C_MCB_MC", 0.10, "USP_SOFTSHELL_G3C_KP_BLK_MC", 0.10, "USP_SOFTSHELL_G3C_BLK_MC", 0.10] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
_array = ["milgp_v_mmac_assaulter_belt_MC", "milgp_v_mmac_assaulter_MC", "milgp_v_jpc_Assaulter_mc", "milgp_v_jpc_assaulter_belt_mc", "USP_CRYE_CPC_COMMS_MC", "USP_CRYE_CPC_COMMS_BELT_MC", "USP_CRYE_JPC_ASLTB", "USP_CRYE_JPC_ASLT", "USP_CRYE_NCPC_ASLT_AOR1", "USP_VEST_STRANDHOGG2_MC", "USP_VEST_PLATEFRAME_LOAD2_MC"];
_vest = selectRandom _array;
player addVest _vest;
player addBackpack "TFAR_rt1523g_sage";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
_ammo = ["rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan", 0.70, "rhs_mag_30Rnd_556x45_Mk318_SCAR_Pull", 0.10, "rhs_mag_30Rnd_556x45_Mk318_SCAR_Ranger", 0.10, "rhs_mag_30Rnd_556x45_Mk318_SCAR", 0.10] call BIS_fnc_selectRandomWeighted;
for "_i" from 1 to 4 do {player addItem _ammo;};
player addItem "AMP_Breaching_Charge_Mag";
for "_i" from 1 to 2 do {player addItem "ACE_M84";};
player addItem "ACE_bodyBag";
player addItem "Laserdesignator_03";
player addItem "Laserbatteries";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_Clacker";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
_array = ["rhsusf_opscore_mc_cover_pelt_cam", "rhsusf_opscore_mc_pelt_nsw", "milgp_h_opscore_05_MC", "milgp_h_airframe_06_MC", "milgp_h_opscore_04_MC", "milgp_h_opscore_05_goggles_MC", "milgp_h_opscore_04_goggles_MC", "milgp_h_opscore_03_MC", "milgp_h_opscore_03_goggles_MC", "USP_OPS_FASTXP_TAN_MC_08", "USP_OPS_FASTXP_BLK_MC_08", "USP_OPS_FASTXP_TAN_MC_07", "USP_OPS_FASTXP_BLK_MC_07", "USP_OPS_FASTXP_TAN_MC_06", "USP_OPS_FASTXP_BLK_MC_06", "USP_OPS_FASTXP_TAN_MC_05", "USP_OPS_FASTXP_BLK_MC_05", "USP_OPS_FASTXP_TAN_MC_04", "USP_OPS_FASTXP_BLK_MC_04", "USP_OPS_FASTXP_TAN_MC_03", "USP_OPS_FASTXP_BLK_MC_03"];
_helmet = selectRandom _array;
player addHeadgear _helmet;
_array = ["rhsusf_shemagh2_od", "rhsusf_shemagh2_grn", "rhsusf_shemagh2_tan", "milgp_f_face_shield_BLK", "milgp_f_face_shield_CB", "milgp_f_face_shield_khk", "milgp_f_face_shield_MC", "milgp_f_face_shield_RGR", "milgp_f_face_shield_shemagh_BLK", "milgp_f_face_shield_shemagh_CB", "milgp_f_face_shield_shemagh_khk", "milgp_f_face_shield_shemagh_MC", "milgp_f_face_shield_shemagh_RGR", "TRYK_kio_balaclavas", "USP_GATORZ_BLK", "USP_ok_detc_MC", "USP_ok_detc_MC_EMB", "USP_ok_sisj_MC", "USP_ok_sisj_MC_EMB"];
_goggles = selectRandom _array;
player addGoggles _goggles;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
_nods = ["USP_GPNVG18_TAN", 0.25, "USP_PVS31", 0.75, "USP_PVS31_COMPACT", 0.50, "USP_PVS31_HIGH", 0.50, "USP_PVS31_LOW", 0.25, "USP_PVS15", 0.25] call BIS_fnc_selectRandomWeighted;
player linkItem _nods;

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a SOF \nJoint Terminal Attack Controller. \nWith your equipment and know-how, you're the master of air-to-ground fire support.";