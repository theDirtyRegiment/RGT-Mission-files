removeGoggles player;

comment "Create the arrays for different equipment";
_goggles = [
	"USP_ADVANCER_CLR", 
	"USP_ADVANCER_YEL", 
	"USP_ADVANCER", 
	"USP_OAKLEY_SI2_BLK", 
	"USP_OAKLEY_SI2_EMB", 
	"USP_OAKLEY_SI2_YEL", 
	"USP_OAKLEY_SI2", 
	"USP_OAKLEY_SI2_MC_BLK", 
	"USP_OAKLEY_SI2_MC_EMB", 
	"USP_OAKLEY_SI2_MC_YEL", 
	"USP_OAKLEY_SI2_MC", 
	"USP_OAKLEY_SI2_TAN_BLK", 
	"USP_OAKLEY_SI2_TAN_EMB", 
	"USP_OAKLEY_SI2_TAN_YEL", 
	"USP_OAKLEY_SI2_TAN"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player addBackpack "rhs_d6_Parachute_backpack";
player addGoggles _goggles;
player linkItem "ACE_Altimeter";

hint "You are now equipped with a static line parachute, altimeter and thus ready for low altitude airborne operations.";
