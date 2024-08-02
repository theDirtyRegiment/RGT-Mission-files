comment "Remove gear before applying loadouts";

removeBackpack player;

_bag = ["TRYK_B_BAF_BAG_rgr", "USP_PATROL_PACK_RGR"] call BIS_fnc_selectRandom;
player addBackpack _bag;
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_mag_maaws_HEAT";};

hint "You're now carrying additional rounds for the 84mm Anti Armor Weapon.";