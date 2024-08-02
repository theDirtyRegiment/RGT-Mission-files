comment "Remove gear before applying loadouts";
removeBackpack player;

comment "Create the arrays for different equipment";
_bag = [
	"TRYK_B_BAF_BAG_mcamo", 
	"USP_PATROL_PACK_CS_FH_ZT", 
	"USP_PATROL_PACK_CB_CS_FH_RP_ZT", 
	"USP_45L_RUCKSACK_MC"] call BIS_fnc_selectRandom;

// Add backpack
player addBackpack _bag;
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_maaws_HEAT";};

hint "You're now carrying additional rounds for the 84mm Anti Armor Weapon.";