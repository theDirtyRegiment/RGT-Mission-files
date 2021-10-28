comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_weapon = ["rhs_weap_m249", 0.90, "rhs_weap_m249_light_S", 0.02] call BIS_fnc_selectRandomWeighted;
player addWeapon _weapon;
player addPrimaryWeaponItem "rhsusf_acc_saw_bipod";
if (_weapon isEqualTo "rhs_weap_m249_light_S") then {
	player addPrimaryWeaponItem "rhsusf_acc_elcan_ard";
	player addPrimaryWeaponItem "rhsusf_acc_m952v";
};

comment "Add containers";
_array = ["milgp_u_g3_field_set_mc", "rhs_uniform_acu_ocp", "rhs_uniform_acu_oefcp"];
_uniform = selectRandom _array;
player forceAddUniform _uniform;
player addItemToUniform "ACE_morphine";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_Flashlight_MX991";
player addItemToUniform "ACE_MapTools";
player addItemToUniform "ACE_microDAGR";
_array = ["rhsusf_spcs_ocp_saw", "milgp_v_marciras_hgunner_mc", "milgp_v_marciras_hgunner_belt_mc"];
_vest = selectRandom _array;
player addVest _vest;
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "ACE_EntrenchingTool";
for "_i" from 1 to 3 do {player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
_array = ["TRYK_B_BAF_BAG_mcamo", "USP_PATROL_PACK_CS_FH_ZT", "USP_PATROL_PACK_CB_CS_FH_RP_ZT", "USP_45L_RUCKSACK_MC"];
_bag = selectRandom _array;
player addBackpack _bag;
_array = ["rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote", "rhsusf_200Rnd_556x45_mixed_soft_pouch", "rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp"];
_mag = selectRandom _array;
for "_i" from 1 to 3 do {player addItemToBackpack _mag;};
_array = ["rhsusf_ach_helmet_ocp_norotos", "rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ocp"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
_array = ["rhsusf_ANPVS_14", "USP_PVS14"];
_nods = selectRandom _array;
player linkItem _nods;

player addWeapon "rhsusf_weap_m9";

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry automatic rifleman. \nYour light machine gun's ability to provide short to medium range suppressing fire is the difference between life and death.";