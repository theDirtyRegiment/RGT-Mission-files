comment "Remove gear before applying loadouts";
removeBackpack player;

_bag = [
	"TRYK_B_BAF_BAG_mcamo", 
	"USP_PATROL_PACK_CS_FH_ZT", 
	"USP_PATROL_PACK_CB_CS_FH_RP_ZT", 
	"USP_45L_RUCKSACK_MC"] call BIS_fnc_selectRandom;
player addBackpack _bag;
for "_i" from 1 to 4 do {player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};

hint "You're are now carrying additional ammo for the 7.62mm general-purpose machine gun.";