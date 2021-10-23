removeBackpack player;
player addBackpack "rhs_d6_Parachute_backpack";
player action ["Eject",vehicle player];
uiSleep 2;
player action ["OpenParachute", player];