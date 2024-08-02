comment "Remove gear before applying loadouts";
removeBackpack player;

comment "Create the arrays for different equipment";
_backpack = [
	"rhs_assault_umbts", 
	"rhs_rd54", "rhs_rk_sht_30_emr", 
	"rhs_rk_sht_30_olive"] call BIS_fnc_selectRandom;

// Add backpack
player addBackpack _backpack;

hint "You shouldered a patrol pack.";