comment "Remove gear before applying loadouts";

removeBackpack player;

_bag = ["TRYK_B_BAF_BAG_rgr", "USP_PATROL_PACK_RGR"] call BIS_fnc_selectRandom;
player addBackpack _bag;
for "_i" from 1 to 10 do {player addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_m714_White";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_mag_m713_Red";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_HuntIR_M203";};

hint "You're now carrying extra grenades for the 40mm UGL.";