comment "Remove gear before applying loadouts";
removeBackpack player;

comment "Create the arrays for different equipment";
_bag = [
	"TRYK_B_BAF_BAG_mcamo", 
	"milgp_b_patrol_01_rgr", 
	"USP_PATROL_PACK_CS_FH_ZT", 
	"USP_PATROL_PACK_CB_CS_FH_RP_ZT", 
	"USP_45L_RUCKSACK_MC"] call BIS_fnc_selectRandom;

// Add backpack
player addBackpack _bag;

hint "You shouldered a patrol pack.";