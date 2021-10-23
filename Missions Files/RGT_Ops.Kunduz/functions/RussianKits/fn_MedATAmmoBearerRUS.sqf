removeBackpack player;

player addBackpack "rhs_rpg_empty";
player addItemToBackpack "rhs_rpg7_PG7VR_mag";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_rpg7_PG7VM_mag";};

hint "You're now carrying additional rounds for the RPG-7.";