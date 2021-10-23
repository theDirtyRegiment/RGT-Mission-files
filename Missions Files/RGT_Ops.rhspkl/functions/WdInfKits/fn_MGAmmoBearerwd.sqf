comment "Remove existing items";
removeBackpack player;

_array = ["TRYK_B_BAF_BAG_rgr", "USP_PATROL_PACK_RGR"];
_bag = selectRandom _array;
player addBackpack _bag;
for "_i" from 1 to 4 do {player addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};

hint "You're are now carrying additional ammo for the 7.62mm general-purpose machine gun.";