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
player addWeapon "rhsusf_weap_MP7A2_desert_grip3";
player addPrimaryWeaponItem "rhsusf_acc_rotex_mp7_desert";
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
_optic = ["rhsusf_acc_T1_high", 0.90, "rhsusf_acc_eotech", 0.05, "rhsusf_acc_eotech_552_d", 0.05] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem "rhsusf_acc_tdstubby_tan";
player addWeapon "rhs_weap_M320";

comment "Add containers";
_clothing = ["ARD_MC_Blk_Camo_Cyre", 0.60, "ARD_MC_Blk_Camo_Cyre_SS", 0.30, "ARD_MC_Camo_Cyre_TS", 0.10, "USP_PCU_G3C_BLK_MC", 0.10, "USP_PCU_G3C_KP_BLK_MC", 0.10, "USP_PCU_G3C_KP_OR_MCB_MC", 0.10, "USP_PCU_G3C_KP_MX_BLK_MC", 0.10, "USP_SOFTSHELL_G3C_BLK_MC", 0.10, "USP_PCU_G3C_KP_MX_MCB_MC", 0.10, "USP_PCU_G3C_KP_MCB_MC", 0.10, "USP_PCU_G3C_MCB_MC", 0.10, "USP_SOFTSHELL_G3C_KP_BLK_MC", 0.10, "USP_SOFTSHELL_G3C_BLK_MC", 0.10] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
_array = ["milgp_v_mmac_grenadier_belt_MC", "milgp_v_mmac_grenadier_MC", "milgp_v_jpc_Grenadier_mc", "milgp_v_jpc_grenadier_belt_mc", "USP_CRYE_JPC_GR", "USP_CRYE_JPC_GRB", "USP_CRYE_CPC_WEAPON_MC", "USP_CRYE_CPC_WEAPON_BELT_MC"];
_vest = selectRandom _array;
player addVest _vest;
_array = ["milgp_bp_Breacher_mc", "USP_PACK_BREACHER_MC"];
_pack = selectRandom _array;
player addBackpack _pack;
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
player addItem "SmokeShell";
for "_i" from 1 to 2 do {player addItem "ACE_M84";};
for "_i" from 1 to 5 do {player addItem "rhs_mag_M441_HE";};
for "_i" from 1 to 2 do {player addItem "rhs_mag_M397_HET";};
player addItem "SmokeShellRed";
player addItem "rhs_mag_m714_White";
player addItem "rhs_mag_m713_Red";
for "_i" from 1 to 2 do {player addItem "ACE_HuntIR_M203";};
for "_i" from 1 to 4 do {player addItem "rhsusf_mag_40Rnd_46x30_FMJ";};
player addItem "rhsusf_mag_40Rnd_46x30_AP";
player addItem "rhsusf_mag_40Rnd_46x30_JHP";
player addItem "ACE_wirecutter";
player addItem "ACE_HuntIR_monitor";
player addItem "AMP_Breaching_Charge_Mag";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_Clacker";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
_array = ["rhsusf_opscore_mc_cover_pelt_cam", "rhsusf_opscore_mc_pelt_nsw", "milgp_h_opscore_05_MC", "milgp_h_airframe_06_MC", "milgp_h_opscore_04_MC", "milgp_h_opscore_05_goggles_MC", "milgp_h_opscore_04_goggles_MC", "milgp_h_opscore_03_MC", "milgp_h_opscore_03_goggles_MC", "USP_OPS_FASTXP_TAN_MC_08", "USP_OPS_FASTXP_BLK_MC_08", "USP_OPS_FASTXP_TAN_MC_07", "USP_OPS_FASTXP_BLK_MC_07", "USP_OPS_FASTXP_TAN_MC_06", "USP_OPS_FASTXP_BLK_MC_06", "USP_OPS_FASTXP_TAN_MC_05", "USP_OPS_FASTXP_BLK_MC_05", "USP_OPS_FASTXP_TAN_MC_04", "USP_OPS_FASTXP_BLK_MC_04", "USP_OPS_FASTXP_TAN_MC_03", "USP_OPS_FASTXP_BLK_MC_03"];
_helmet = selectRandom _array;
player addHeadgear _helmet;
_array = ["JK_FullBeard_DarkBrown", "rhsusf_shemagh2_od", "rhsusf_shemagh2_grn", "rhsusf_shemagh2_tan", "milgp_f_face_shield_BLK", "milgp_f_face_shield_CB", "milgp_f_face_shield_khk", "milgp_f_face_shield_MC", "milgp_f_face_shield_RGR", "milgp_f_face_shield_shemagh_BLK", "milgp_f_face_shield_shemagh_CB", "milgp_f_face_shield_shemagh_khk", "milgp_f_face_shield_shemagh_MC", "milgp_f_face_shield_shemagh_RGR", "TRYK_kio_balaclavas", "USP_GATORZ_BLK", "USP_ok_detc_MC", "USP_ok_detc_MC_EMB", "USP_ok_sisj_MC", "USP_ok_sisj_MC_EMB"];
_goggles = selectRandom _array;
player addGoggles _goggles;

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

hint "You're now equipped as a special operations pointman. \nYour suppressed MP7 is optimized for silently taking out sentries up to 100m. \nYou're also equipped with a 40mm grenade launcher and wirecutters for added range and cutting through wire-based defenses.";