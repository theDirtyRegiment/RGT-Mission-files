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
_vest = [
	"rhsusf_spcs_ocp_rifleman", 0.45, 
	"rhsusf_spcs_ocp_rifleman_alt", 0.45, 
	"rhsusf_iotv_ocp_Rifleman", 0.10] call BIS_fnc_selectRandomWeighted;
_helmet = [
	"rhsusf_ach_helmet_ocp_norotos", 
	"rhsusf_ach_helmet_camo_ocp", 
	"rhsusf_ach_helmet_headset_ess_ocp", 
	"rhsusf_ach_helmet_headset_ocp"] call BIS_fnc_selectRandom;
_pack = [
	"rhsgref_hidf_alicepack",
	"rhssaf_alice_md2camo",
	"rhssaf_alice_smb",
	"rhsgref_ttsko_alicepack",
	"rhsgref_wdl_alicepack",
	"USP_PATROL_PACK_CB_CS_FH_RP_ZT",
	"USP_45L_RUCKSACK_MC",
	"USP_45L_RUCKSACK_TAN"] call BIS_fnc_selectRandom;

comment "Add Weapons and attachments";
player addWeapon "rhs_weap_m4a1_d_mstock_grip3";
player addPrimaryWeaponItem "rhsusf_acc_nt4_tan";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15_light";
player addPrimaryWeaponItem "rhsusf_acc_eotech_552_d";
player addPrimaryWeaponItem "rhsusf_acc_grip3_tan";

comment "Add Uniforms and Gear";
player forceAddUniform _clothing;
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
player addItem "ACE_Kestrel4500";
player addItem "ACE_ATragMX";
player addItem "ACE_RangeCard";
player addItem "ACE_CableTie";
player addItem "ACE_microDAGR";
player addItem "B_IR_Grenade";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItem "Chemlight_red";
player addItem "HandGrenade";
player addItem "SmokeShell";
player addItem "SmokeShellRed";
player addItem "SmokeShellBlue";
for "_i" from 1 to 4 do {player addItem "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
player addItem "rhsusf_acc_M2010S_sa";
player addItem "rhsusf_acc_harris_bipod";
player addItem "rhsusf_acc_premier";
player addItem "rhsusf_acc_premier_anpvs27";
player addItem "rhs_weap_XM2010_sa";
for "_i" from 1 to 4 do {player addItem "rhsusf_5Rnd_300winmag_xm2010";};

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
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're the sniper and medic of a 2-man sniper team. \nYou're equipped with everything needed for long range engagements and providing medical aid.";