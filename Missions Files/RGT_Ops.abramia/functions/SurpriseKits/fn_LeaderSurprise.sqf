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
player addWeapon "rhs_weap_mk18_d";
_array = ["ace_muzzle_mzls_l", "", "rhsusf_acc_rotex5_grey", "rhsusf_acc_sf3p556", "rhsusf_acc_sfmb556"];
_front = selectRandom _array;
player addPrimaryWeaponItem _front;
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a_light_top";
_optic = ["rhsusf_acc_EOTECH", 0.25, "rhsusf_acc_g33_xps3_tan", 0.75] call BIS_fnc_selectRandomWeighted;
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
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_Clacker";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
player addItemToUniform "B_IR_Grenade";
player addItemToUniform "Chemlight_green";
player addItemToUniform "ACE_Chemlight_IR";
player addItemToUniform "Chemlight_red";
player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";
_array = ["milgp_v_mmac_teamleader_belt_KHK", "milgp_v_mmac_teamleader_KHK", "milgp_v_jpc_TeamLeader_khk", "milgp_v_jpc_teamleader_belt_khk"];
_vest = selectRandom _array;
player addVest _vest;
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShell";
for "_i" from 1 to 2 do {player addItemToVest "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiBlue";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiRed";};
player addItemToVest "SmokeShellPurple";
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_PMAG_Tan";};
player addItemToVest "AMP_Breaching_Charge_Mag";
player addBackpack "milgp_bp_Pointman_khk";
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_stanag";};
_array = ["LOP_H_Beanie_tan", "H_Watchcap_blk", "H_Watchcap_cbr", "H_Watchcap_camo", "H_Watchcap_khk", "TRYK_H_woolhat_CW"];
_helmet = selectRandom _array;
player addHeadgear _helmet;
_array = ["rhsusf_shemagh_white", "rhsusf_shemagh2_white"];
_face = selectRandom _array;
player addGoggles _face;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

switch (true) do
{
	case (typeOf player == "B_Soldier_F"):
	{
		[player, "Alpha"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_Soldier_lite_F"):
	{
		[player, "Bravo"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_officer_F"):
	{
		[player, "Charlie"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_Soldier_unarmed_F"):
	{
		[player, "Sherwood"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
	case (typeOf player == "B_Survivor_F"):
	{
		[player, "Everest"] remoteExec ["BIS_fnc_setUnitInsignia", player, true];
	};
};

[[player],"ace_medical_medicClass", 1, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;
