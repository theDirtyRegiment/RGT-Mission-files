comment "Remove gear before applying loadouts";
removeBackpack player;

comment "Create the arrays for different equipment";
_bag = [
	"USP_PATROL_PACK_BLK", 
	"USP_PATROL_PACK_CBR", 
	"USP_PATROL_PACK", 
	"USP_PATROL_PACK_MCD", 
	"USP_PATROL_PACK_RGR", 
	"USP_PATROL_PACK_CB_CS_FH_ZT", 
	"USP_PATROL_PACK_CS_FH", 
	"USP_PATROL_PACK_ZT", 
	"USP_PATROL_PACK_CS", 
	"USP_PATROL_PACK_CB_RP"] call BIS_fnc_selectRandom;

player addBackpack _bag;
for "_i" from 1 to 5 do {player addItemToBackpack "rhsusf_5Rnd_300winmag_xm2010";};
player addItemToBackpack "rhsusf_acc_premier_mrds";
player addItemToBackpack "rhsusf_acc_premier_anpvs27";
player addItemToBackpack "rhsusf_acc_M2010S_sa";
player addItemToBackpack "rhsusf_acc_harris_bipod";
player addItemToBackpack "ACE_ATragMX";
player addItemToBackpack "ACE_Kestrel4500";
player addItemToBackpack "rhs_weap_XM2010_sa";
player addItemToBackpack "ACE_RangeCard";

hint "You shouldered a sniper bag.";