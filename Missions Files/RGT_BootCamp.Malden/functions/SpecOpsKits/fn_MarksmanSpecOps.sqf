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
_rifle = ["rhs_weap_sr25_ec_d", 0.25, "rhs_weap_sr25_d", 0.60, "rhs_weap_mk17_STD", 0.15] call BIS_fnc_selectRandomWeighted;
player addWeapon _rifle;
if (_rifle isEqualTo "rhs_weap_sr25_ec_d") then { 
	player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
	player addPrimaryWeaponItem "rhsgref_sdn6_suppressor"; 
};
if (_rifle isEqualTo "rhs_weap_sr25_d") then { 
	player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
	player addPrimaryWeaponItem "rhsusf_acc_sr25s_d"; 
};
if (_rifle isEqualTo "rhs_weap_mk17_STD") then { 
	_array = ["rhsusf_acc_anpeq15", "rhsusf_acc_anpeq15_wmx_sc", "rhsusf_acc_anpeq15_wmx"];
	_lam = selectRandom _array;
	player addPrimaryWeaponItem _lam;
	player addPrimaryWeaponItem "rhsgref_sdn6_suppressor"; 
};
player addPrimaryWeaponItem "optic_mrco";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_FMJ";

comment "Add containers";
_clothing = ["ARD_MC_Blk_Camo_Cyre", 0.60, "ARD_MC_Blk_Camo_Cyre_SS", 0.30, "ARD_MC_Camo_Cyre_TS", 0.10, "USP_PCU_G3C_BLK_MC", 0.10, "USP_PCU_G3C_KP_BLK_MC", 0.10, "USP_PCU_G3C_KP_OR_MCB_MC", 0.10, "USP_PCU_G3C_KP_MX_BLK_MC", 0.10, "USP_SOFTSHELL_G3C_BLK_MC", 0.10, "USP_PCU_G3C_KP_MX_MCB_MC", 0.10, "USP_PCU_G3C_KP_MCB_MC", 0.10, "USP_PCU_G3C_MCB_MC", 0.10, "USP_SOFTSHELL_G3C_KP_BLK_MC", 0.10, "USP_SOFTSHELL_G3C_BLK_MC", 0.10] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
_array = ["milgp_v_mmac_marksman_belt_MC", "milgp_v_mmac_marksman_MC", "milgp_v_jpc_marksman_mc", "milgp_v_jpc_marksman_belt_mc", "USP_CRYE_JPC_DM", "USP_CRYE_JPC_DMB"];
_vest = selectRandom _array;
player addVest _vest;
_array = ["milgp_bp_Pointman_mc", "USP_ZIPON_PANEL_MC", "USP_PACK_FASTHAWK", "USP_PACK_HYDRATION", "USP_PACK_POINTMAN"];
_pack = selectRandom _array;
player addBackpack _pack;
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
player addItem "ACE_bodyBag";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
player addItem "AMP_Breaching_Charge_Mag";
for "_i" from 1 to 2 do {player addItem "ACE_M84";};
player addItem "SmokeShell";
_array = ["rhs_mag_20Rnd_SCAR_762x51_mk316_special", "rhs_mag_20Rnd_SCAR_762x51_mk316_special_bk"];
_mag1 = selectRandom _array;
_array = ["rhs_mag_20Rnd_SCAR_762x51_m61_ap", "rhs_mag_20Rnd_SCAR_762x51_m61_ap_bk"];
_mag2 = selectRandom _array;
if (_rifle isEqualTo "rhs_weap_sr25_d") then {
	for "_i" from 1 to 3 do {player addItem "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";};
	for "_i" from 1 to 2 do {player addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
};
if (_rifle isEqualTo "rhs_weap_mk17_STD") then {
	for "_i" from 1 to 3 do {player addItem _mag1;};
	for "_i" from 1 to 2 do {player addItem _mag2;}; 
};
if (_rifle isEqualTo "rhs_weap_sr25_ec_d") then {
	for "_i" from 1 to 3 do {player addItem "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";};
	for "_i" from 1 to 2 do {player addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
};
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_Clacker";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "B_IR_Grenade";
_array = ["rhsusf_opscore_mc_cover_pelt_cam", "rhsusf_opscore_mc_pelt_nsw", "milgp_h_opscore_05_MC", "milgp_h_airframe_06_MC", "milgp_h_opscore_04_MC", "milgp_h_opscore_05_goggles_MC", "milgp_h_opscore_04_goggles_MC", "milgp_h_opscore_03_MC", "milgp_h_opscore_03_goggles_MC", "USP_OPS_FASTXP_TAN_MC_08", "USP_OPS_FASTXP_BLK_MC_08", "USP_OPS_FASTXP_TAN_MC_07", "USP_OPS_FASTXP_BLK_MC_07", "USP_OPS_FASTXP_TAN_MC_06", "USP_OPS_FASTXP_BLK_MC_06", "USP_OPS_FASTXP_TAN_MC_05", "USP_OPS_FASTXP_BLK_MC_05", "USP_OPS_FASTXP_TAN_MC_04", "USP_OPS_FASTXP_BLK_MC_04", "USP_OPS_FASTXP_TAN_MC_03", "USP_OPS_FASTXP_BLK_MC_03"];
_helmet = selectRandom _array;
player addHeadgear _helmet;
_array = ["JK_FullBeard_DarkBrown", "rhsusf_shemagh2_od", "rhsusf_shemagh2_grn", "rhsusf_shemagh2_tan", "milgp_f_face_shield_BLK", "milgp_f_face_shield_CB", "milgp_f_face_shield_khk", "milgp_f_face_shield_MC", "milgp_f_face_shield_RGR", "milgp_f_face_shield_shemagh_BLK", "milgp_f_face_shield_shemagh_CB", "milgp_f_face_shield_shemagh_khk", "milgp_f_face_shield_shemagh_MC", "milgp_f_face_shield_shemagh_RGR", "TRYK_kio_balaclavas", "USP_GATORZ_BLK", "USP_ok_detc_MC", "USP_ok_detc_MC_EMB", "USP_ok_sisj_MC", "USP_ok_sisj_MC_EMB"];
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

hint "You're now equipped as an special operations assault sniper. Your equipment is optimized for night-time medium-range engagements";