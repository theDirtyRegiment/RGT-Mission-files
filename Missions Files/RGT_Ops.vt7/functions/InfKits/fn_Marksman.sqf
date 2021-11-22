comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_rifle = ["rhs_weap_m14ebrri", 0.50, "rhs_weap_mk17_STD", 0.05, "srifle_DMR_06_camo_F", 0.15, "rhs_weap_sr25_d", 0.10, "rhs_weap_m14_rail", 0.15, "rhs_weap_m14_rail_d", 0.15, "rhs_weap_m14_rail_fiberglass", 0.15, "rhs_weap_m14_rail_wd", 0.15, "rhs_weap_m27iar_grip", 0.02, "rhs_weap_m27iar", 0.02] call BIS_fnc_selectRandomWeighted;player addWeapon _rifle;
player addPrimaryWeaponItem "optic_MRCO";
if (_rifle isEqualTo "rhs_weap_mk17_STD") then { 
	player addPrimaryWeaponItem "rhsusf_acc_anpeq15_wmx_sc";
	player addPrimaryWeaponItem "rhsgref_sdn6_suppressor"; 
}	else	{
	player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
};
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addPrimaryWeaponItem "rhsusf_acc_m14_bipod";

comment "Add containers";
_array = ["milgp_u_g3_field_set_mc", "USP_PCU_G3C_MC", "USP_PCU_G3C_KP_MC", "USP_PCU_G3C_KP_MX_MC", "USP_PCU_G3C_KP_OR_MC", "USP_PCU_G3C_MX_MC", "USP_PCU_G3C_OR_MC", "USP_SOFTSHELL_G3C_MC", "USP_SOFTSHELL_G3C_KP_MC", "USP_SOFTSHELL_G3C_KP_MX_MC", "USP_SOFTSHELL_G3C_KP_OR_MC", "USP_SOFTSHELL_G3C_MX_MC", "USP_SOFTSHELL_G3C_OR_MC"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
_array = ["rhsusf_spcs_ocp_sniper", "milgp_v_marciras_marksman_mc", "milgp_v_marciras_marksman_belt_mc"];
_vest = selectRandom _array;
player addVest _vest;
_array = ["TRYK_B_BAF_BAG_mcamo", "USP_PATROL_PACK_CS_FH_ZT", "USP_PATROL_PACK_CB_CS_FH_RP_ZT", "USP_45L_RUCKSACK_MC"];
_bag = selectRandom _array;
player addBackpack _bag;
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
for "_i" from 1 to 3 do {player addItem "rhsusf_mag_15Rnd_9x19_JHP";};
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
player addItem "ACE_EntrenchingTool";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "SmokeShellBlue";
_array = ["rhs_mag_20Rnd_SCAR_762x51_mk316_special", "rhs_mag_20Rnd_SCAR_762x51_mk316_special_bk"];
_mag1 = selectRandom _array;
_array = ["rhs_mag_20Rnd_SCAR_762x51_m61_ap", "rhs_mag_20Rnd_SCAR_762x51_m61_ap_bk"];
_mag2 = selectRandom _array;
_array = ["rhs_mag_30Rnd_556x45_M855A1_EPM_Pull", "rhs_mag_30Rnd_556x45_M855A1_EPM_Ranger", "rhs_mag_30Rnd_556x45_M855A1_EPM", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Ranger", "rhs_mag_30Rnd_556x45_M855A1_Stanag"];
_ammo = selectRandom _array;
if ((_rifle isEqualTo "rhs_weap_m27iar") or (_rifle isEqualTo "rhs_weap_m27iar_grip")) then {
	for "_i" from 1 to 7 do {player addItem _ammo;};
};
if (_rifle isEqualTo "rhs_weap_sr25_d") then {
	for "_i" from 1 to 4 do {player addItem "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";};
	for "_i" from 1 to 3 do {player addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
};
if (_rifle isEqualTo "rhs_weap_mk17_STD") then {
	for "_i" from 1 to 4 do {player addItem _mag1;};
	for "_i" from 1 to 3 do {player addItem _mag2;}; 
};
if ((_rifle isEqualTo "rhs_weap_m14ebrri") or (_rifle isEqualTo "srifle_DMR_06_camo_F") or (_rifle isEqualTo "rhs_weap_m14_rail") or (_rifle isEqualTo "rhs_weap_m14_rail_d") or (_rifle isEqualTo "rhs_weap_m14_rail_fiberglass") or (_rifle isEqualTo "rhs_weap_m14_rail_wd")) then {
	for "_i" from 1 to 4 do {player addItem "ACE_20Rnd_762x51_M118LR_Mag";};
	for "_i" from 1 to 3 do {player addItem "ACE_20Rnd_762x51_M993_AP_Mag";};
};
_array = ["rhsusf_ach_helmet_ocp_norotos", "rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_ESS_ocp", "rhsusf_ach_helmet_ocp"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

player addWeapon "rhsusf_weap_m9";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry marksman. \nYour equipment is optimized for daylight medium-range precision engagements";
