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
_rifle = [
	"rhs_weap_m4a1_m203s_wd", 0.75, 
	"rhs_weap_m4a1_blockII_M203_wd", 0.25] call BIS_fnc_selectRandomWeighted;
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
_helmet = [
	"MCTropic_Boonie_HS", 0.75, 
	"AOR2_Boonie_HS", 0.05, 
	"milgp_h_cap_01_RGR", 0.05, 
	"H_Watchcap_camo", 0.10, 
	"TRYK_H_Bandana_H", 0.05, 
	"TRYK_H_Bandana_wig", 0.05] call BIS_fnc_selectRandomWeighted;
_grip = [
	"",
	"rhsusf_acc_grip_m203_blk",
	"rhsusf_acc_grip_m203_wd"] call BIS_fnc_selectRandom;
_optic = [
	"rhsusf_acc_su230a",
	"rhsusf_acc_su230a_mrds",
	"rhsusf_acc_su230_mrds",
	"rhsusf_acc_ACOG_wd",
	"rhsusf_acc_ACOG_RMR"] call BIS_fnc_selectRandom;
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
player addBackpack "TFAR_rt1523g_big_bwmod";

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem "muzzle_snds_m_khk_F";
player addPrimaryWeaponItem _grip;
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem _optic;
player addWeapon "ACE_Vector";

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_microDAGR";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "HandGrenade";
player addItem "SmokeShell";
for "_i" from 1 to 5 do {player addItem "rhs_mag_M441_HE";};
for "_i" from 1 to 3 do {player addItem "rhs_mag_M397_HET";};
player addItem "rhs_mag_M585_white";
player addItem "rhs_mag_m662_red";
player addItem "rhs_mag_m713_Red";
player addItem "rhs_mag_m714_White";
for "_i" from 1 to 2 do {player addItem "ACE_HuntIR_M203";};
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
player addItem "UGL_FlareCIR_F";
player addItem "ACE_HuntIR_monitor";
player addItem "A3_NVGHeadGearBlk_F";
player addItem "USP_PVS14";
for "_i" from 1 to 7 do {player addItem _ammo;};
player addItem "APERSTripMine_Wire_Mag";
player addItem "rhs_mag_m661_green";
player addItem "rhs_mag_m715_Green";

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

hint "You're equipped as long range reconnaissance patrol commander, radio operator and grenadier. \n \nPROs: Your team is equipped for medium range engagements and static OP ops. \n \nCONs: Your team is heavy and unarmored. \nPlan well, find the enemy, stay safe and hidden. \nReport back!";