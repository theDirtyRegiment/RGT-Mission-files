comment "Remove gear before applying loadouts";

removeBackpack player;

player addBackpack "TRYK_B_BAF_BAG_mcamo";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_fim92_mag";};

hint "You're now carrying extra missles for the anti air missile launcher.";