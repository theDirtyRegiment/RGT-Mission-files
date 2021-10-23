comment "Remove existing items";
removeBackpack player;

_array = ["rhs_assault_umbts", "rhs_rd54", "rhs_rk_sht_30_emr", "rhs_rk_sht_30_olive"];
_backpack = selectRandom _array;
player addBackpack _backpack;

hint "You shouldered a patrol pack.";