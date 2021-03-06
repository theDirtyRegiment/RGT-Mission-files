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
player addWeapon "rhs_weap_sr25_ec_wd";
player addPrimaryWeaponItem "rhsgref_sdn6_suppressor";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
_optic = ["optic_dms", 0.45, "optic_MRCO", 0.45, "rhsusf_acc_anpas13gv1", 0.10] call BIS_fnc_selectRandomWeighted;
player addPrimaryWeaponItem _optic;
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_bino_m24_ARD";

comment "Add containers";
_clothing = ["milgp_u_g3_field_set_rolled_mctropic", 0.60, "milgp_u_g3_field_set_mctropic", 0.15, "ARD_AOR2_Camo_Cyre", 0.05, "ARD_AOR2_Camo_Cyre_SS", 0.05, "ARD_MCTropic_Camo_Cyre", 0.05, "ARD_MCTropic_Camo_Cyre_SS", 0.10] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
_vest = ["V_TacChestrig_grn_F", "rhsgref_alice_webbing", "rhsgref_chestrig", "rhsgref_chicom"] call BIS_fnc_selectRandom;
player addVest _vest;
player addBackpack "TRYK_B_Medbag_BK";
for "_i" from 1 to 2 do {player addItem "ACE_morphine";};
for "_i" from 1 to 3 do {player addItem "ACE_elasticBandage";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "ACE_microDAGR";
player addItem "HandGrenade";
player addItem "SmokeShell";
for "_i" from 1 to 4 do {player addItem "rhsusf_20Rnd_762x51_SR25_m118_special_Mag";};
for "_i" from 1 to 2 do {player addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_epinephrine";};
player addItemToBackpack "ACE_bodyBag";
player addItemToBackpack "ACE_SpraypaintRed";
player addItemToBackpack "ACE_plasmaIV";
player addItemToBackpack "ACE_salineIV";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_plasmaIV_500";};
player addItemToBackpack "ACE_plasmaIV_250";
player addItemToBackpack "ACE_salineIV_250";
player addItemToBackpack "ACE_surgicalKit";
player addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 7 do {player addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_adenosine";};
player addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
player addItemToBackpack "rhsusf_20Rnd_762x51_SR25_m993_Mag";
player addItemToBackpack "USP_PVS14";
player addItemToBackpack "APERSTripMine_Wire_Mag";
_helmet = ["MCTropic_Boonie_HS", 0.75, "AOR2_Boonie_HS", 0.05, "milgp_h_cap_01_RGR", 0.05, "H_Watchcap_camo", 0.10, "TRYK_H_Bandana_H", 0.05, "TRYK_H_Bandana_wig", 0.05] call BIS_fnc_selectRandomWeighted;
player addHeadgear _helmet;
_goggles = ["", 0.60, "JK_FullBeard_DarkBrown", 0.10, "JK_CircleBeard_DarkBrown", 0.02, "JK_FriendlyMuttonChops_DarkBrown", 0.02, "JK_GoateeBeard_DarkBrown", 0.02, "JK_Mustage_DarkBrown", 0.02, "milgp_f_face_shield_BLK", 0.01, "milgp_f_face_shield_CB", 0.01, "milgp_f_face_shield_khk", 0.01, "milgp_f_face_shield_MC", 0.01, "milgp_f_face_shield_RGR", 0.01, "milgp_f_face_shield_shades_shemagh_BLK", 0.01, "milgp_f_face_shield_shemagh_CB", 0.01, "milgp_f_face_shield_shemagh_khk", 0.01, "milgp_f_face_shield_shemagh_MC", 0.01, "milgp_f_face_shield_shemagh_RGR", 0.01] call BIS_fnc_selectRandomWeighted;
player addGoggles _goggles;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 2, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're equipped as long range reconnaissance patrol medic and marksman. \nAdditionally to your medic and marksman equipment, you have explosives for ambushes and OP security.";