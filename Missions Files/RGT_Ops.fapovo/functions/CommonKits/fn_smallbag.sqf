comment "Remove existing items";
removeBackpack player;

_pack = ["milgp_bp_Pointman_mc", "milgp_bp_Breacher_mc", "milgp_bp_Tomahawk_mc", "USP_ZIPON_PANEL_MC", "USP_PACK_FASTHAWK", "USP_PACK_HYDRATION", "USP_PACK_POINTMAN"] call BIS_fnc_selectRandom;
player addBackpack _pack;

hint "You weaved equipment pouches onto the back of your body armor.";