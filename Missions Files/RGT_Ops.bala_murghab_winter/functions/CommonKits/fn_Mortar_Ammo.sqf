comment "Remove gear before applying loadouts";
removeBackpack player;

comment "Add Mortar ammo backpack";
player addItem "ACE_artilleryTable";
player addBackpack "NDS_M224_B_Ammo";

hint "You're now equipped as the mortar team's ammobearer. \nThe additional mortar rounds you carry are vital for sustained fire support.";