removeBackpack player;
removeGoggles player;

player addBackpack "B_Parachute";
_array = ["USP_SOLR_XP_OAK_NP", "USP_SOLR_XP_RGR_OAK", "USP_SOLR_XP_MC_OAK", "USP_SOLR_XP_CBR_OAK", "USP_SOLR_XP_OAK"];
_goggles = selectRandom _array;
player addGoggles _goggles;
player linkItem "ACE_Altimeter";

hint "You are now equipped with a parachute, altimeter, goggles, oxygen mask and thus ready for airborne operations.";