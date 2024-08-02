comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

_helmet = [
	"rhsusf_ach_helmet_ocp_norotos", 		"rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_ESS_ocp", "rhsusf_ach_helmet_ocp"] call BIS_fnc_selectRandom;
_suit = [
	"milgp_u_g3_field_set_mc", "milgp_u_g3_field_set_rolled_mc"] call BIS_fnc_selectRandom;
_pack = ["TFAR_rt1523g_sage",
	"USP_TACTICAL_PACK_CCT",
	"USP_TACTICAL_PACK_CCT",
	"USP_TACTICAL_PACK_CCT2",
	"USP_TACTICAL_PACK_CCT2",
	"USP_TACTICAL_PACK_CCT3",
	"USP_TACTICAL_PACK_CCT3",
	"USP_TACTICAL_PACK_CCT4",
	"USP_TACTICAL_PACK_CCT4"] call BIS_fnc_selectRandom;
_grip = [
	"", 0.9,
	"rhsusf_acc_grip_m203_blk", 0.1,
	"rhsusf_acc_grip_m203_d", 0.2] call BIS_fnc_selectRandomWeighted;
_optic = [
	"rhsusf_acc_su230_mrds_c", 0.1,
	"rhsusf_acc_ACOG_d", 0.8,
	"rhsusf_acc_su230_c", 0.1] call BIS_fnc_selectRandomWeighted;

player forceAddUniform _suit;
player addHeadgear _helmet;
player addVest "V_TacChestrig_grn_F";
player addBackpack _pack;

comment "Add Weapons and attachments";
player addWeapon "rhs_weap_m4a1_m203s_d";
player addPrimaryWeaponItem "rhsusf_acc_nt4_tan";
player addPrimaryWeaponItem _grip;
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side_bk";
player addPrimaryWeaponItem _optic;
player addWeapon "ACE_Vector";

comment "Fill Uniform and Gear";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_ATragMX";
player addItem "ACE_Kestrel4500";
player addItem "ACE_RangeCard";
player addItem "B_IR_Grenade";
player addItem "ACE_Chemlight_IR";
player addItem "ACE_microDAGR";
player addItem "ACE_DefusalKit";
for "_i" from 1 to 7 do {player addItem "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 3 do {player addItem "rhs_mag_M441_HE";};
player addItem "1Rnd_SmokeRed_Grenade_shell";
player addItem "1Rnd_Smoke_Grenade_shell";
player addItem "ACE_SpottingScope";
player addItem "APERSBoundingMine_Range_Mag";
for "_i" from 1 to 2 do {player addItem "APERSTripMine_Wire_Mag";};

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're the spotter, radioman and team leader of a 2-man sniper team. \nYou're equipped with 40mm UGL, tripwire mines and a defusal kit for added firepower and sniper hide security.";