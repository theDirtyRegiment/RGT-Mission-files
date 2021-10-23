removeBackpack player;

player addBackpack "rhs_assault_umbts_engineer_empty";
player addItemToBackpack "rhsusf_m112x4_mag";
for "_i" from 1 to 2 do {player addItemToBackpack "rhsusf_m112_mag";};
for "_i" from 1 to 6 do {player addItemToBackpack "rhs_mag_mine_pfm1";};

hint "You're now carrying extra explosives.";