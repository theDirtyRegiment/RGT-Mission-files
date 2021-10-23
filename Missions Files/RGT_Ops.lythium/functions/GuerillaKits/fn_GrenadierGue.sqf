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
player addWeapon "rhs_weap_m79";
player addWeapon "rhs_weap_makarov_pm";

comment "Add containers";
_array = ["U_I_C_Soldier_Bandit_3_F", "LOP_U_BH_Fatigue_FWDL_LIZ", "LOP_U_BH_Fatigue_GUE_M81_OLV", "LOP_U_BH_Fatigue_OFI_LIZ", "LOP_U_ChDKZ_Fatigue_01", "LOP_U_ChDKZ_Fatigue_02", "LOP_U_ChDKZ_Fatigue_03", "LOP_U_ChDKZ_Fatigue_04", "LOP_U_ChDKZ_Fatigue_Bardak", "LOP_U_ChDKZ_Fatigue_Commander", "LOP_U_IRA_Fatigue_HTR_DPM_J", "LOP_U_NAPA_Fatigue_01", "LOP_U_NAPA_Fatigue_02", "LOP_U_NAPA_Fatigue_04", "LOP_U_UA_Fatigue_03", "LOP_U_AFR_Fatigue_03", "U_BG_Guerilla2_2", "U_BG_Guerilla2_1", "U_BG_Guerilla2_3", "U_BG_Guerilla3_1", "U_BG_leader"];
_clothing = selectRandom _array;
player forceAddUniform _clothing;
player addBackpack "rhsgref_hidf_alicepack";
player addItem "ACE_EarPlugs";
player addItem "ACE_MapTools";
player addItem "ACE_epinephrine";
for "_i" from 1 to 5 do {player addItem "ACE_elasticBandage";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_Flashlight_XL50";
player addItem "Chemlight_green";
player addItem "ACE_Chemlight_IR";
player addItemToVest "rhs_mag_rdg2_white";
player addItem "Chemlight_red";
for "_i" from 1 to 4 do {player addItem "rhs_mag_9x18_8_57N181S";};
player addItem "ACE_microDAGR";
player addItem "rhs_mag_rdg2_white";
for "_i" from 1 to 40 do {player addItem "rhs_mag_M441_HE";};
_array = ["TRYK_H_Bandana_wig", "TRYK_R_CAP_BLK", "TRYK_R_CAP_TAN", "TRYK_H_woolhat", "TRYK_H_woolhat_br", "TRYK_H_Bandana_wig_g", "TRYK_H_woolhat_cu", "TRYK_H_woolhat_tan", "TRYK_H_Booniehat_JSDF", "LOP_H_Worker_cap", "LOP_H_Villager_cap", "LOP_H_Ushanka", "LOP_H_SSh68Helmet_OLV", "LOP_H_Cowboy_hat", "LOP_H_Fieldcap_UKR", "LOP_H_ChDKZ_Beret", "H_Bandanna_surfer", "rhsgref_bcap_specter", "rhssaf_bandana_smb"];
_helmet = selectRandom _array;
player addHeadgear _helmet;

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're a rebel grenadier. \nWith your 40mm grenade launcher, you're one of the main trouble makers for the enemy. \nUnfortunately the militia doesn't have any other weapons to give you.";