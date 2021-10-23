enableSaving [false, false];
enableRadio false;														// That will clear the voices from my head...
enableSentences FALSE;													// Stop talking to myself
"respawn_west" setMarkerAlpha 0;'
"respawn_civilian" setMarkerAlpha 0;

null = [this] execVM "loadout.sqf"; 
this addeventhandler ["respawn", "_this execVM 'loadout.sqf'"];

[missionNamespace,["RGTRespawnInv"]] call BIS_fnc_addRespawnInventory;