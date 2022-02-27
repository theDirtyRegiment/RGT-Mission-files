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
_rifle = ["rhs_weap_vss_grip", "rhs_weap_asval_grip"] call BIS_fnc_selectRandom;
player addWeapon _rifle;
player addPrimaryWeaponItem "rhs_acc_perst1ik_ris";
_optic = ["rhs_acc_ekp1", "rhs_acc_ekp8_02", "rhs_acc_pkas"] call BIS_fnc_selectRandom;
player addPrimaryWeaponItem _optic;

comment "Add containers";
_clothing = ["ARD_ATACS_Camo_Cyre", 0.25, "ARD_ATACS_Camo_Cyre_SS", 0.05, "ARD_ATACS_Camo_Cyre_TS", 0.05, "milgp_u_g3_field_set_atacsau", 0.05, "milgp_u_g3_field_set_rolled_atacsau", 0.25, "rhs_uniform_gorka_r_y", 0.05, "LOP_U_US_Fatigue_13", 0.05, "rhs_uniform_gorka_r_g", 0.05, "LOP_U_US_Fatigue_14", 0.05, "rhs_uniform_gorka_r_g_gloves", 0.05, "rhs_uniform_gorka_r_y_gloves", 0.05, "rhs_uniform_gorka_1_a", 0.05, "rhs_uniform_gorka_1_b", 0.05] call BIS_fnc_selectRandomWeighted;
player forceAddUniform _clothing;
_vest = ["milgp_v_marciras_assaulter_belt_rgr", "milgp_v_marciras_assaulter_rgr"] call BIS_fnc_selectRandom;
player addVest _vest;
player addBackpack "milgp_bp_breacher_rgr";
player addItem "ACE_morphine";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
for "_i" from 1 to 3 do {player addItem "ACE_tourniquet";};
player addItem "ACE_CableTie";
player addItem "ACE_EarPlugs";
player addItem "ACE_IR_Strobe_Item";
player addItem "ACE_Flashlight_MX991";
player addItem "ACE_Clacker";
player addItem "ACE_MapTools";
for "_i" from 1 to 2 do {player addItem "16Rnd_9x21_Mag";};
player addItem "ACE_microDAGR";
player addItem "rhs_mag_rdg2_white";
for "_i" from 1 to 2 do {player addItem "rhs_mag_fakel";};
for "_i" from 1 to 5 do {player addItem "rhs_mag_rgd5";};
player addItem "rhssaf_mag_brd_m83_red";
for "_i" from 1 to 6 do {player addItem "rhs_20rnd_9x39mm_SP5";};
for "_i" from 1 to 3 do {player addItem "rhs_20rnd_9x39mm_SP6";};
player addItem "ACE_wirecutter";
player addItem "AMP_Breaching_Charge_Mag";
player addItem "rhs_acc_2dpzenit_ris";
_helmet = ["rhsusf_opscore_mar_fg_pelt", "rhsusf_opscore_fg_pelt_nsw", "milgp_h_opscore_05_RGR", "milgp_h_opscore_04_RGR", "rhs_altyn_novisor_ess", "rhs_altyn_novisor", "rhsusf_mich_bare_norotos_arc_alt", "rhsusf_mich_bare_norotos_arc_headset", "rhsusf_mich_bare_norotos_arc_alt_semi", "rhsusf_mich_bare_norotos_arc_semi_headset", "rhsusf_mich_bare_norotos_arc_alt_tan", "rhsusf_mich_bare_norotos_arc_alt_tan_headset", "USP_OPSCORE_FASTMT_OD_CM", "USP_OPSCORE_FASTMT_CM", "USP_OPSCORE_FASTMT_OD_CMW", "USP_OPSCORE_FASTMT_CMW", "USP_OPSCORE_FASTMT_OD_CMG", "USP_OPSCORE_FASTMT_CMG", "USP_OPSCORE_FASTMT_OD_CMGS", "USP_OPSCORE_FASTMT_CMGS", "USP_OPSCORE_FASTMT_OD_CMGSW", "USP_OPSCORE_FASTMT_CMGSW", "USP_OPSCORE_FASTMT_OD_CMGT", "USP_OPSCORE_FASTMT_CMGT", "USP_OPSCORE_FASTMT_OD_CMGTW", "USP_OPSCORE_FASTMT_CMGTW", "USP_OPSCORE_FASTMT_OD_CMS", "USP_OPSCORE_FASTMT_CMS", "USP_OPSCORE_FASTMT_OD_CMSW", "USP_OPSCORE_FASTMT_CMSW", "USP_OPSCORE_FASTMT_OD_CMT", "USP_OPSCORE_FASTMT_CMT", "USP_OPSCORE_FASTMT_OD_CMTW", "USP_OPSCORE_FASTMT_CMTW", "USP_OPSCORE_FASTMT_OD_CW", "USP_OPSCORE_FASTMT_CW", "USP_OPSCORE_FASTMT_OD_CG", "USP_OPSCORE_FASTMT_CG", "USP_OPSCORE_FASTMT_OD_CGW", "USP_OPSCORE_FASTMT_CGW", "USP_MICH_TC2000_CT_PH", "USP_MICH_TC2000_CT_PC", "USP_MICH_TC2000_CT_NS", "USP_MICH_TC2000_CT_MC", "USP_MICH_TC2000_CT_IR", "USP_MICH_TC2000_CT_IB", "USP_MICH_TC2000_CT_GU", "USP_MICH_TC2000_CT_GG", "USP_MICH_TC2000_CT_GC", "USP_MICH_TC2000_CT_GB", "USP_MICH_TC2000_CT_CM", "USP_MICH_TC2000_CT_CM_VL", "USP_MICH_TC2000_CT_CM_SF", "USP_MICH_TC2000_CT_CM_PS", "USP_MICH_TC2000_CT_CM_PH", "USP_MICH_TC2000_CT_CM_PC", "USP_MICH_TC2000_CT_CM_PC_VL", "USP_MICH_TC2000_CT_CM_PC_NS", "USP_MICH_TC2000_CT_CM_PC_LP", "USP_MICH_TC2000_CT_CM_PC_LP_VL", "USP_MICH_TC2000_CT_CM_PC_LP_NS", "USP_MICH_TC2000_CT_CM_PC_LP_IR", "USP_MICH_TC2000_CT_CM_PC_LP_IR_NS", "USP_MICH_TC2000_CT_CM_PC_LP_IB", "USP_MICH_TC2000_CT_CM_PC_LP_IB_VL", "USP_MICH_TC2000_CT_CM_PC_IR", "USP_MICH_TC2000_CT_CM_PC_IR_NS", "USP_MICH_TC2000_CT_CM_PC_IB", "USP_MICH_TC2000_CT_CM_PC_IB_VL", "USP_MICH_TC2000_CT_CM_PC_GU", "USP_MICH_TC2000_CT_CM_PC_GU_VL", "USP_MICH_TC2000_CT_CM_PC_GU_NS", "USP_MICH_TC2000_CT_CM_PC_GU_IR", "USP_MICH_TC2000_CT_CM_PC_GU_IR_NS", "USP_MICH_TC2000_CT_CM_PC_GU_IB", "USP_MICH_TC2000_CT_CM_PC_GU_IB_VL", "USP_MICH_TC2000_CT_CM_PC_GG", "USP_MICH_TC2000_CT_CM_PC_GG_VL", "USP_MICH_TC2000_CT_CM_PC_GG_NS", "USP_MICH_TC2000_CT_CM_PC_GG_IR", "USP_MICH_TC2000_CT_CM_PC_GG_IB", "USP_MICH_TC2000_CT_CM_PC_GG_IB_VL", "USP_MICH_TC2000_CT_CM_PC_GG_GB", "USP_MICH_TC2000_CT_CM_PC_GG_GB_VL", "USP_MICH_TC2000_CT_CM_PC_GG_GB_IR", "USP_MICH_TC2000_CT_CM_PC_GG_GB_IB", "USP_MICH_TC2000_CT_CM_PC_GG_GB_IB_VL", "USP_MICH_TC2000_CT_CM_PC_GC", "USP_MICH_TC2000_CT_CM_PC_GC_VL", "USP_MICH_TC2000_CT_CM_PC_GC_NS", "USP_MICH_TC2000_CT_CM_PC_GC_IR", "USP_MICH_TC2000_CT_CM_PC_GC_IB", "USP_MICH_TC2000_CT_CM_PC_GC_IB_VL", "USP_MICH_TC2000_CT_CM_PC_GB", "USP_MICH_TC2000_CT_CM_PC_GB_VL", "USP_MICH_TC2000_CT_CM_PC_GB_NS", "USP_MICH_TC2000_CT_CM_PC_GB_IR", "USP_MICH_TC2000_CT_CM_NS", "USP_MICH_TC2000_CT_CM_LP", "USP_MICH_TC2000_CT_CM_IR", "USP_MICH_TC2000_CT_CM_IB", "USP_MICH_TC2000_CT_CM_GU", "USP_MICH_TC2000_CT_CM_GG", "USP_MICH_TC2000_CT_CM_GC", "USP_MICH_TC2000_CT_CM_GC_VL", "USP_MICH_TC2000_CT_CM_GC_SF", "USP_MICH_TC2000_CT_CM_GC_PS_VL", "USP_MICH_TC2000_CT_CM_GC_PH", "USP_MICH_TC2000_CT_CM_GC_PH_VL", "USP_MICH_TC2000_CT_CM_GC_NS_PH", "USP_MICH_TC2000_CT_CM_GC_IR_PS", "USP_MICH_TC2000_CT_CM_GC_IR_PH", "USP_MICH_TC2000_CT_CM_GC_IR_NS", "USP_MICH_TC2000_CT_CM_GC_IR_NS_PH", "USP_MICH_TC2000_CT_CM_GC_IB_PS_VL", "USP_MICH_TC2000_CT_CM_GC_IB_PH_VL", "USP_MICH_TC2000_CT_CM_GB_VL", "USP_MICH_TC2000_CT_CM_GB_PH_VL", "USP_MICH_TC2000_CT_CM_GB_IR_PH"] call BIS_fnc_selectRandom;
player addHeadgear _helmet;
_facewear = ["rhs_balaclava", "rhs_balaclava1_olive", "rhs_scarf"] call BIS_fnc_selectRandom;
player addGoggles _facewear;

player addWeapon "hgun_Rook40_F";
player addHandgunItem "rhsusf_acc_omega9k";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "TFAR_microdagr";
player linkItem "TFAR_anprc152";
player linkItem "ItemGPS";
_nods = ["USP_NSEAS", "rhsusf_ANPVS_14", "USP_PVS14"] call BIS_fnc_selectRandom;
player linkItem _nods;

player setSpeaker "ACE_NoVoice";

player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "You're now equipped as a Russian spetsnaz pointman. \nYour integrally suppressed rifle is optimized for silently taking out sentries up to 100m. \nYou're also equipped with wirecutters for silently cutting through wire-based defenses.";