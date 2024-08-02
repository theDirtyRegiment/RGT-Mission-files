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
_suit = [
	"milgp_u_g3_field_set_mc",
	"USP_G3F_MC",
	"USP_G3F_MX_MC",
	"USP_G3F_OR_MC",
	"USP_G3F_G3C_MC",
	"USP_G3F_G3C_KP_MC",
	"USP_G3F_G3C_KP_MX_MC",
	"USP_G3F_G3C_KP_OR_MC",
	"USP_G3F_G3C_MX_MC",
	"USP_G3F_G3C_OR_MC",
	"USP_PCU_G3C_MC", 
	"USP_PCU_G3C_KP_MC", 
	"USP_PCU_G3C_KP_MX_MC", 
	"USP_PCU_G3C_KP_OR_MC", 
	"USP_PCU_G3C_MX_MC", 
	"USP_PCU_G3C_OR_MC", 
	"USP_SOFTSHELL_G3C_MC", 
	"USP_SOFTSHELL_G3C_KP_MC", 
	"USP_SOFTSHELL_G3C_KP_MX_MC", 
	"USP_SOFTSHELL_G3C_KP_OR_MC", 
	"USP_SOFTSHELL_G3C_MX_MC", 
	"USP_SOFTSHELL_G3C_OR_MC"] call BIS_fnc_selectRandom;
_helmet = [
	"rhsusf_ach_helmet_ocp_norotos", 
	"rhsusf_ach_helmet_camo_ocp", 
	"rhsusf_ach_helmet_headset_ess_ocp", 
	"rhsusf_ach_helmet_headset_ocp", 
	"rhsusf_ach_helmet_ESS_ocp", 
	"rhsusf_ach_helmet_ocp"] call BIS_fnc_selectRandom;
_rifle = [
	"rhs_weap_M107_w",
	"rhs_weap_M107_d",
	"rhs_weap_M107"] call BIS_fnc_selectRandom;
_vest = [
	"V_TacChestrig_grn_F",
	"V_TacChestrig_cbr_F",
	"V_TacChestrig_oli_F",
	"rhsgref_chestrig"] call BIS_fnc_selectRandom;
_pack = [
	"B_Kitbag_mcamo",
	"USP_PATROL_PACK_FH_ZT",
	"USP_PATROL_PACK_CS_FH_ZT",
	"USP_45L_RUCKSACK_MC",
	"USP_PATROL_PACK_CB_FH_RP_ZT",
	"USP_PATROL_PACK_CB_CS_FH_RP_ZT"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon _rifle;
player addPrimaryWeaponItem "rhsusf_acc_premier";
player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";
player addWeapon "ACE_Vector";

comment "Add Uniforms and Gear";
player forceAddUniform _suit;
player addVest _vest;
player addBackpack _pack;
player addHeadgear _helmet;

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
player addItem "rhsusf_mag_17Rnd_9x19_JHP";
for "_i" from 1 to 2 do {player addItem "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItem "B_IR_Grenade";
player addItem "ACE_Chemlight_IR";
player addItem "ACE_microDAGR";
player addItem "SmokeShell";
player addItem "HandGrenade";
for "_i" from 1 to 2 do {player addItem "rhsusf_mag_10Rnd_STD_50BMG_M33";};
player addItem "rhsusf_acc_premier_anpvs27";
for "_i" from 1 to 2 do {player addItem "APERSTripMine_Wire_Mag";};
for "_i" from 1 to 2 do {player addItem "rhsusf_mag_10Rnd_STD_50BMG_M33";};

comment "Start of medical gear";
for "_i" from 1 to 10 do {player addItem "ACE_morphine";};
for "_i" from 1 to 10 do {player addItem "ACE_epinephrine";};
player addItem "ACE_plasmaIV";
player addItem "ACE_salineIV";
for "_i" from 1 to 2 do {player addItem "ACE_salineIV_500";};
for "_i" from 1 to 2 do {player addItem "ACE_plasmaIV_500";};
player addItem "ACE_plasmaIV_250";
player addItem "ACE_salineIV_250";
player addItem "ACE_surgicalKit";
player addItem "ACE_personalAidKit";
for "_i" from 1 to 20 do {player addItem "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItem "ACE_packingBandage";};
for "_i" from 1 to 10 do {player addItem "ACE_quikclot";};
for "_i" from 1 to 7 do {player addItem "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItem "ACE_adenosine";};
comment "End of Medical gear";

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

[[player],"ace_medical_medicClass", 2, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're the sniper and medic of a 2-man sniper team. \nYou're equipped with a .50cal anti-material rifle, for those targets, that need to be vaporized.";