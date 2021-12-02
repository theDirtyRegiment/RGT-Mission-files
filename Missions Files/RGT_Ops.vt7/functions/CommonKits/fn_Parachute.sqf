player call zade_boc_fnc_actionOnChest;
removeGoggles player;

player addBackpack "B_Parachute";
_goggles = ["USP_SOLR_XP_OAK_NP", "USP_SOLR_XP_RGR_OAK", "USP_SOLR_XP_MC_OAK", "USP_SOLR_XP_CBR_OAK", "USP_SOLR_XP_OAK"] call BIS_fnc_selectRandom;
player addGoggles _goggles;
player linkItem "ACE_Altimeter";

hint "You are now equipped with a parachute, altimeter, goggles, oxygen mask and thus ready for airborne operations.";
