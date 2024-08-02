comment "Remove gear before applying loadouts";
removeBackpack player;

_bag = ["TRYK_B_BAF_BAG_rgr", "USP_PATROL_PACK_RGR"] call BIS_fnc_selectRandom;
player addBackpack _bag;
for "_i" from 1 to 4 do {player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};

hint "You're are now carrying additional ammo for the 7.62mm general-purpose machine gun.";