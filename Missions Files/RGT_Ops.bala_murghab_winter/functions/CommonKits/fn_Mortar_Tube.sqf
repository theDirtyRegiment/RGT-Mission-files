comment "Remove gear before applying loadouts";
removeBackpack player;

comment "Add Mortar to back";
player addItem "ACE_artilleryTable";
player addBackpack "NDS_B_M224_mortar";

hint "You're now equipped as a mortarman. \nYour 60mm mortar is an invaluable asset in a firefight.";