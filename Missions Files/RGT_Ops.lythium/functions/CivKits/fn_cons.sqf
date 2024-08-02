comment "Remove gear before applying loadouts";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

comment "Create the arrays for different equipment";
_suit = [
	"U_C_ConstructionCoverall_Black_F", 
	"U_C_ConstructionCoverall_Blue_F", 
	"U_C_ConstructionCoverall_Red_F", 
	"U_C_ConstructionCoverall_Vrana_F"] call BIS_fnc_selectRandom;
_vest = [
	"V_Safety_blue_F", 
	"V_Safety_orange_F", 
	"V_Safety_yellow_F"] call BIS_fnc_selectRandom;
_head = [
	"H_Construction_basic_black_F", 
	"H_Construction_earprot_black_F", 
	"H_Construction_basic_orange_F", 
	"H_Construction_earprot_orange_F", 
	"H_Construction_basic_red_F", 
	"H_Construction_earprot_red_F", 
	"H_Construction_basic_vrana_F", 
	"H_Construction_earprot_vrana_F", 
	"H_Construction_basic_white_F", 
	"H_Construction_earprot_white_F", 
	"H_Construction_basic_yellow_F", 
	"H_Construction_earprot_yellow_F"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _suit;
player addVest _vest;
player addHeadgear _head;

comment "Fill Uniform and Gear";
player addItem "ACE_MapTools";
player addItem "ACE_Flashlight_XL50";

comment "Add final Gear";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";


player setSpeaker "ACE_NoVoice";

comment "Set G Force resistance and Medical + Engineer training";
player setVariable ["ACE_GForceCoef", 1];

[[player],"ace_medical_medicClass", 0, true] call ace_common_fnc_assignObjectsInList;
[[player],"ACE_IsEngineer", 1, true] call ace_common_fnc_assignObjectsInList;

hint "You're a construction worker. Hooray!";