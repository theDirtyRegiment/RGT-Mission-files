comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Create the arrays for different equipment";
_clothing = [
	"milgp_u_g3_field_set_rolled_mctropic", 0.60, 
	"milgp_u_g3_field_set_mctropic", 0.15, 
	"ARD_AOR2_Camo_Cyre", 0.05, 
	"ARD_AOR2_Camo_Cyre_SS", 0.05, 
	"ARD_MCTropic_Camo_Cyre", 0.05, 
	"ARD_MCTropic_Camo_Cyre_SS", 0.10] call BIS_fnc_selectRandomWeighted;
_vest = [
	"V_TacChestrig_grn_F", 0.60, 
	"rhsgref_alice_webbing", 0.20, 
	"rhsgref_chestrig", 0.10, 
	"rhsgref_chicom", 0.10] call BIS_fnc_selectRandomWeighted;
_ammo = [
	"rhs_mag_30Rnd_556x45_Mk318_PMAG", 
	"rhs_mag_30Rnd_556x45_Mk262_Stanag_Pull", 
	"rhs_mag_30Rnd_556x45_Mk262_Stanag_Ranger", 
	"rhs_mag_30Rnd_556x45_Mk262_Stanag"] call BIS_fnc_selectRandom;
_pack = [
	"milgp_b_patrol_01_rgr",
	"TRYK_B_Alicepack",
	"USP_PATROL_PACK_CB",
	"USP_PATROL_PACK_CB_CS",
	"USP_PATROL_PACK_CB_CS_FH",
	"USP_PATROL_PACK_CB_CS_FH_RP",
	"USP_PATROL_PACK_CB_CS_FH_RP_ZT",
	"USP_PATROL_PACK_CB_CS_FH_ZT",
	"USP_PATROL_PACK_CB_CS_RP",
	"USP_PATROL_PACK_CB_CS_RP_ZT",
	"USP_REEBOW_3DAP_ACC1_RGR",
	"USP_REEBOW_3DAP_ACC10_RGR",
	"USP_REEBOW_3DAP_ACC2_RGR",
	"USP_REEBOW_3DAP_ACC3_RGR",
	"USP_REEBOW_3DAP_ACC4_RGR",
	"USP_REEBOW_3DAP_ACC5_RGR",
	"USP_REEBOW_3DAP_ACC6_RGR",
	"USP_REEBOW_3DAP_ACC7_RGR",
	"USP_REEBOW_3DAP_ACC8_RGR",
	"USP_REEBOW_3DAP_ACC9_RGR"] call BIS_fnc_selectRandom;
_helmet = [
	"MCTropic_Boonie_HS", 0.75, 
	"AOR2_Boonie_HS", 0.05, 
	"milgp_h_cap_01_RGR", 0.05, 
	"H_Watchcap_camo", 0.10, 
	"TRYK_H_Bandana_H", 0.05, 
	"TRYK_H_Bandana_wig", 0.05] call BIS_fnc_selectRandomWeighted;
_goggles = [
	"", 0.60,  
	"milgp_f_face_shield_BLK", 0.10, 
	"milgp_f_face_shield_CB", 0.10, 
	"milgp_f_face_shield_khk", 0.10, 
	"milgp_f_face_shield_MC", 0.10, 
	"milgp_f_face_shield_RGR", 0.10, 
	"milgp_f_face_shield_shades_shemagh_BLK", 0.10, 
	"milgp_f_face_shield_shemagh_CB", 0.10, 
	"milgp_f_face_shield_shemagh_khk", 0.10, 
	"milgp_f_face_shield_shemagh_MC", 0.10, 
	"milgp_f_face_shield_shemagh_RGR", 0.10] call BIS_fnc_selectRandomWeighted;

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
player addVest _vest;
player addHeadgear _helmet;
player addGoggles _goggles;
player addBackpack _pack;

comment "Add Weapons and attachments";
player addWeapon "rhs_weap_m4a1_blockII_KAC_wd";
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem "rhsusf_acc_su230";
player addPrimaryWeaponItem "rhsusf_acc_grip2_wd";
player addWeapon "rhs_weap_m72a7";
player addSecondaryWeaponItem "rhsusf_acc_anpeq15side";
player addWeapon "rhsusf_bino_m24_ARD";

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_Clacker";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "rhs_m72a7_mag";
player addItem "ACE_CableTie";
player addItem "ACE_microDAGR";
player addItem "HandGrenade";
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
for "_i" from 1 to 9 do {player addItem _ammo;};
player addItem "USP_PVS14";
player addItem "A3_NVGHeadGearBlk_F";
player addItem "HandGrenade";
for "_i" from 1 to 2 do {player addItem "APERSTripMine_Wire_Mag";};
player addItem "DemoCharge_Remote_Mag";
player addItem "ACE_DefusalKit";
player addItem "SLAMDirectionalMine_Wire_Mag";

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";

player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're equipped as long range reconnaissance scout. \nYou have explosives, a 60mm LAW and a defusal kit in order to wreak maximum havoc behind enemy lines.";