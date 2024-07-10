// Remove gear before applying loadouts
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Create the arrays for different equipment
_optic = [
	"rhsusf_acc_T1_high", 
	"rhsusf_acc_eotech_xps3", 
	"rhsusf_acc_mrds"] call BIS_fnc_selectRandom;
_grip = [
	"rhs_acc_grip_ffg2", 
	"rhsusf_acc_rvg_blk"] call BIS_fnc_selectRandom;
_uniform = [
	"USP_G3C_IST", 
	"USP_G3C_IST_GRY", 
	"USP_G3C_IST_MCB", 
	"USP_G3C_IST_KP_MCB", 
	"USP_G3C_IST_KP_MX_MCB", 
	"USP_G3C_IST_OR", 
	"USP_G3C_IST_MX_MCB", 
	"USP_G3C_IST_OR_GRY"] call BIS_fnc_selectRandom;
_vest = [
	"V_RebreatherIA", 
	"V_RebreatherB", 
	"V_RebreatherIR"] call BIS_fnc_selectRandom;
_helmet = [
	"rhsusf_opscore_bk_pelt", 
	"rhsusf_opscore_mc_pelt_nsw", 
	"milgp_h_opscore_05_MC", 
	"milgp_h_airframe_06_MC", 
	"milgp_h_opscore_04_MC", 
	"milgp_h_opscore_05_goggles_MC", 
	"milgp_h_opscore_04_goggles_MC", 
	"milgp_h_opscore_03_MC", 
	"milgp_h_opscore_03_goggles_MC", 
	"USP_OPS_FASTXP_TAN_MC_08", 
	"USP_OPS_FASTXP_BLK_MC_08", 
	"USP_OPS_FASTXP_TAN_MC_07", 
	"USP_OPS_FASTXP_BLK_MC_07", 
	"USP_OPS_FASTXP_TAN_MC_06", 
	"USP_OPS_FASTXP_BLK_MC_06", 
	"USP_OPS_FASTXP_TAN_MC_05", 
	"USP_OPS_FASTXP_BLK_MC_05", 
	"USP_OPS_FASTXP_TAN_MC_04", 
	"USP_OPS_FASTXP_BLK_MC_04", 
	"USP_OPS_FASTXP_TAN_MC_03", 
	"USP_OPS_FASTXP_BLK_MC_03"] call BIS_fnc_selectRandom;
_nods = [
	"USP_GPNVG18_TAN", 0.25, 
	"USP_PVS31", 0.50, 
	"USP_PVS31_MID", 0.50, 
	"USP_PVS31_HIGH", 0.50, 
	"USP_PVS31_LOW", 0.25, 
	"USP_PVS15", 0.75] call BIS_fnc_selectRandomWeighted;

// Add Uniforms and Gear
player forceAddUniform _uniform;
player addVest _vest;
player addBackpack "milgp_b_patrol_01_cb";
player addHeadgear _helmet;
player addGoggles "G_B_Diving";


// Add Weapons and attachments
player addWeapon "rhsusf_weap_MP7A2_grip3";
player addPrimaryWeaponItem "rhsusf_acc_rotex_mp7";
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a";
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem _grip;
player addPrimaryWeaponItem "rhsusf_mag_40Rnd_46x30_FMJ";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";
player addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";
player addWeapon "ACE_VMH3";

// Fill Uniform and Gear
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
player addItemToBackpack "ACE_microDAGR";
player addItemToBackpack "ACE_Clacker";
player addItemToBackpack "ACE_DefusalKit";
player addItemToBackpack "arifle_SDAR_F";
for "_i" from 1 to 2 do {player addItemToBackpack "20Rnd_556x45_UW_mag";};
player addItemToBackpack "ACE_M84";
player addItemToBackpack "rhs_mag_an_m8hc";
player addItemToBackpack "ACE_Chemlight_IR";
player addItemToBackpack "Chemlight_red";
player addItemToBackpack "Chemlight_green";
player addItemToBackpack "ACE_HandFlare_Green";
for "_i" from 1 to 2 do {player addItemToBackpack "DemoCharge_Remote_Mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "AMP_Breaching_Charge_Mag";};

// Add final Gear
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem _nods;


player setSpeaker "ACE_NoVoice";

// Set G Force resistance and Medical + Engineer training
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're a Navy EOD specialist attached to a SEAL team. \nYou can blow up or defuse anything."