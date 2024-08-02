comment "Remove gear before applying loadouts";

removeBackpack player;

_bag = [
	"TRYK_B_BAF_BAG_mcamo", 
	"USP_PATROL_PACK_CS_FH_ZT", 
	"USP_PATROL_PACK_CB_CS_FH_RP_ZT", 
	"USP_45L_RUCKSACK_MC"] call BIS_fnc_selectRandom;
player addBackpack _bag;
for "_i" from 1 to 2 do {player addItemToBackpack "rhsusf_200rnd_556x45_mixed_box";};
player addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";

hint "You're now carrying extra rounds for the 5.56mm light machine gun. \nWe're gonna need them!";