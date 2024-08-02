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
	"U_C_Man_casual_2_F", 
	"U_C_Man_casual_3_F", 
	"U_C_Man_casual_1_F", 
	"LOP_U_AFR_Civ_01", 
	"LOP_U_AFR_Civ_02", 
	"LOP_U_AFR_Civ_04", 
	"LOP_U_AFR_Civ_05", 
	"LOP_U_AFR_Civ_06", 
	"LOP_U_AFR_Civ_01S", 
	"LOP_U_AFR_Civ_02S", 
	"LOP_U_AFR_Civ_03S", 
	"LOP_U_AFR_Civ_04S", 
	"LOP_U_AFR_Civ_05S", 
	"LOP_U_AFR_Civ_06S", 
	"U_C_Poloshirt_blue", 
	"TRYK_U_B_BLK_T_BK", 
	"TRYK_U_B_RED_T_BR", 
	"TRYK_U_B_BLK_T_WH", 
	"TRYK_U_B_Denim_T_BK", 
	"TRYK_U_B_Denim_T_WH"] call BIS_fnc_selectRandom;
_head = [
	"", 
	"TRYK_H_wig"] call BIS_fnc_selectRandom;

comment "Add Uniforms and Gear";
player forceAddUniform _suit;
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
[[player],"ACE_IsEngineer", 0, true] call ace_common_fnc_assignObjectsInList;

hint "In Hollywood you'd be an extra. In Star Trek, you'd wear a red shirt. In the US, you'd be running from an active shooter. \nYou're a meaningless civilian. Congrats!";