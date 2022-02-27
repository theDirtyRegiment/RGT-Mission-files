comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Add weapons";
player addWeapon "rhs_weap_XM2010_sa";
player addPrimaryWeaponItem "rhsusf_acc_M2010S_sa";
player addPrimaryWeaponItem "rhsusf_acc_premier_mrds";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "ACE_Vector";

comment "Add containers";
_array = ["milgp_u_g3_field_set_mc", "milgp_u_g3_field_set_rolled_mc"];
_suit = selectRandom _array;
player forceAddUniform _suit;
player addVest "V_TacChestrig_grn_F";
player addBackpack "B_Kitbag_rgr";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_EarPlugs";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_MapTools";
player addItem "ACE_ATragMX";
player addItem "ACE_Kestrel4500";
player addItem "ACE_RangeCard";
for "_i" from 1 to 5 do {player addItem "rhsusf_5Rnd_300winmag_xm2010";};
player addItem "rhsusf_mag_17Rnd_9x19_JHP";
for "_i" from 1 to 2 do {player addItem "rhsusf_mag_17Rnd_9x19_FMJ";};
player addItem "B_IR_Grenade";
player addItem "ACE_Chemlight_IR";
player addItem "ACE_microDAGR";
for "_i" from 1 to 2 do {player addItem "SmokeShell";};
player addItem "HandGrenade";
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
player addItem "rhsusf_acc_premier_anpvs27";
for "_i" from 1 to 4 do {player addItem "APERSTripMine_Wire_Mag";};
_array = ["rhsusf_ach_helmet_ocp_norotos", "rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_ESS_ocp", "rhsusf_ach_helmet_ocp"];
_helmet = selectRandom _array;
player addHeadgear _helmet;


player addWeapon "rhsusf_weap_glock17g4";
player addHandgunItem "rhsusf_acc_omega9k";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
player linkItem "USP_PVS14";
player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 1, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're the sniper and medic of a 2-man sniper team. \nYou're equipped with everything needed for long range engagements and providing medical aid.";