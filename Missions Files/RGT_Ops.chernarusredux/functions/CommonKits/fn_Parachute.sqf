removeGoggles player;

comment "Create the arrays for different equipment";
_goggles = [
	"USP_SOLR_XP_OAK_NP", 
	"USP_SOLR_XP_RGR_OAK", 
	"USP_SOLR_XP_MC_OAK", 
	"USP_SOLR_XP_CBR_OAK", 
	"USP_SOLR_XP_OAK"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player addBackpack "B_Parachute";
player addGoggles _goggles;
player linkItem "ACE_Altimeter";

hint "You are now equipped with a parachute, altimeter, goggles, oxygen mask and thus ready for airborne operations.";
