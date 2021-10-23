removeBackpack player;

player addBackpack "rhs_assault_umbts";
for "_i" from 1 to 10 do {player addItemToBackpack "rhs_VOG25";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_VG40MD_White";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_VG40MD_Red";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_VG40MD_Green";};

hint "You're now carrying extra grenades for the 40mm UGL.";