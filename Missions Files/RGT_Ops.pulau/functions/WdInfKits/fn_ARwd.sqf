comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
_rifle = ["rhs_weap_m249", 0.90, "rhs_weap_m249_light_S", 0.02, "rhs_weap_m249_pip", 0.20] call BIS_fnc_selectRandomWeighted;
player addWeapon _rifle;
player addPrimaryWeaponItem "rhsusf_acc_saw_bipod";
if (_rifle isEqualTo "rhs_weap_m249_light_S") then {
	player addPrimaryWeaponItem "rhsusf_acc_elcan_ard";
	player addPrimaryWeaponItem "rhsusf_acc_m952v";
};

comment "Add containers";
_uniform = ["rhs_uniform_g3_m81", "rhs_uniform_bdu_erdl", "USP_PCU_G3C_MCT_M81", "USP_G3C_M81", "USP_G3C_CU_TSW", "USP_G3C_CU_KP_M81", "USP_G3C_CU_KP_MX_M81", "USP_G3C_CU_KP_OR_TSW", "USP_G3C_CU_MX_M81", "USP_G3C_CU_OR_M81", "USP_G3C_KP_TSW"] call BIS_fnc_selectRandom;
player forceAddUniform _uniform;
_vest = ["milgp_v_marciras_hgunner_rgr", "milgp_v_marciras_hgunner_belt_rgr"]call BIS_fnc_selectRandom;
player addVest _vest;
_bag = ["TRYK_B_BAF_BAG_rgr", "USP_PATROL_PACK_RGR"] call BIS_fnc_selectRandom;
player addBackpack _bag;
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 3 do {player addItem "ACE_CableTie";};
for "_i" from 1 to 2 do {player addItem "HandGrenade";};
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "ACE_EntrenchingTool";
for "_i" from 1 to 3 do {player addItem "rhsusf_mag_15Rnd_9x19_JHP";};
_mag = ["rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote", "rhsusf_200Rnd_556x45_mixed_soft_pouch", "rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp"] call BIS_fnc_selectRandom;
for "_i" from 1 to 3 do {player addItem _mag;};
_helmet = ["rhsusf_ach_helmet_M81", "rhsusf_ach_bare_wood", "rhsusf_ach_bare_wood_ess", "rhsusf_ach_bare_wood_headset", "rhsusf_ach_bare_wood_headset_ess", "rhsusf_ach_bare"] call BIS_fnc_selectRandom;
player addHeadgear _helmet;
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "ACE_microDAGR";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player addWeapon "rhsusf_weap_m9";

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as an infantry automatic rifleman. \nYour light machine gun's ability to provide short to medium range suppressing fire is the difference between life and death.";