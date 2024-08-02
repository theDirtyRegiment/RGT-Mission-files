comment "Remove gear before applying loadouts";

removeBackpack player;

_bag = [
	"TRYK_B_BAF_BAG_mcamo", 
	"USP_PATROL_PACK_CS_FH_ZT", 
	"USP_PATROL_PACK_CB_CS_FH_RP_ZT", 
	"USP_45L_RUCKSACK_MC"] call BIS_fnc_selectRandom;
player addBackpack _bag;
for "_i" from 1 to 10 do {player addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_m714_White";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_m713_Red";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HuntIR_M203";};

hint "You're now carrying extra grenades for the 40mm UGL.";