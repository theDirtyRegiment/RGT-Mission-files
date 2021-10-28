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
player addWeapon "rhsusf_weap_MP7A2_winter_grip3";
_array = ["", "rhsusf_acc_rotex_mp7_winter"];
_front = selectRandom _array;
player addPrimaryWeaponItem _front;
player addPrimaryWeaponItem "rhsusf_acc_anpeq16a_light";
_array = ["rhsusf_acc_T1_high", "rhsusf_acc_eotech_xps3", "rhsusf_acc_eotech_552_d", "rhsusf_acc_eotech"];
_optic = selectRandom _array;
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem "rhsusf_acc_tdstubby_tan";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addHandgunItem "acc_flashlight_pistol";

comment "Add containers";
_clothing = ["milgp_u_pcu_g3_field_pants_mcalpine", 0.45, "milgp_u_g3_field_set_mcalpine", 0.20, "TRYK_U_B_PCUHsW4", 0.05, "TRYK_U_B_PCUHsW", 0.05, "milgp_u_fleece_grey_g3_field_pants_mcalpine", 0.05, "ARD_MCAlpine_Camo_Cyre", 0.20] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_CableTie";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "Chemlight_green";
player addItemToUniform "ACE_Chemlight_IR";
player addItemToUniform "Chemlight_red";
player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";
_array = ["milgp_v_mmac_medic_belt_KHK", "milgp_v_mmac_medic_KHK", "milgp_v_jpc_Medic_khk", "milgp_v_jpc_medic_belt_khk"];
_vest = selectRandom _array;
player addVest _vest;
player addItemToVest "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {player addItemToVest "ACE_HandFlare_Green";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_HandFlare_Red";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiBlue";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_Chemlight_HiRed";};
player addItemToVest "SmokeShellPurple";
for "_i" from 1 to 5 do {player addItemToVest "rhsusf_mag_40Rnd_46x30_FMJ";};
player addBackpack "TRYK_B_Medbag_ucp";
for "_i" from 1 to 5 do {player addItemToVest "rhsusf_mag_40Rnd_46x30_AP";};
player addItemToBackpack "rhsusf_mag_40Rnd_46x30_JHP";
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
player addItemToBackpack "ACE_bodyBag";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_bloodIV";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV_500";};
player addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_bodyBag";
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
