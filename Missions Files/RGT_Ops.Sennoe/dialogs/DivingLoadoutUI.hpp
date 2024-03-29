class DivingLoadoutUI
{
	idd=-1;
	movingenable=false;
	
	class controls 
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 0.2 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.6125 * safezoneW;
			h = 0.58 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.5};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "      Weapon Teams"; //--- ToDo: Localize;
			x = 0.4125 * safezoneW + safezoneX;
			y = 0.16 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.08 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.1;
		};
		class IGUIBack_2201: IGUIBack
		{
			idc = 2201;
			x = 0.2125 * safezoneW + safezoneX;
			y = 0.26 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.46 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.4};
		};
		class IGUIBack_2202: IGUIBack
		{
			idc = 2202;
			x = 0.4125 * safezoneW + safezoneX;
			y = 0.26 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.22 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.4};
		};
		class IGUIBack_2203: IGUIBack
		{
			idc = 2203;
			x = 0.4125 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.22 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.4};
		};
		class IGUIBack_2204 : IGUIBack
		{
			idc = 2204;
			x = 0.6125 * safezoneW + safezoneX;
			y = 0.26 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.22 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.4};
		}
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "        Standard Ammo Bearers"; //--- ToDo: Localize;
			x = 0.2125 * safezoneW + safezoneX;
			y = 0.26 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.06;
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "              Medium AT Team"; //--- ToDo: Localize;
			x = 0.4125 * safezoneW + safezoneX;
			y = 0.26 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.06;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "                  Recon Team"; //--- ToDo: Localize;
			x = 0.4125 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.06;
		};
		class RscText_1004: RscText
		{
			idc = 1004;
			text = "             Anti-Air Team"; //--- ToDo: Localize;
			x = 0.6125 * safezoneW + safezoneX;
			y = 0.26 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.06;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "AR Ammo Bearer"; //--- ToDo: Localize;
			x = 0.225 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_ARAmmoBearerDiving', player, false]";
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			text = "Grenadier Ammo Bearer"; //--- ToDo: Localize;
			x = 0.225 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_GrenadierAmmoBearerDiving', player, false]";
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			text = "Engineer Ammo Bearer"; //--- ToDo: Localize;
			x = 0.225 * safezoneW + safezoneX;
			y = 0.48 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_EngineerAmmoBearerDiving', player, false]";
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Medium AT"; //--- ToDo: Localize;
			x = 0.425 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_MedATDiving', player, false]";
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "Medium AT Ammo Bearer"; //--- ToDo: Localize;
			x = 0.425 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_MedATAmmoBearerDiving', player, false]";
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "Sniper"; //--- ToDo: Localize;
			x = 0.425 * safezoneW + safezoneX;
			y = 0.56 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_SniperDiving', player, false]";
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			text = "Spotter"; //--- ToDo: Localize;
			x = 0.425 * safezoneW + safezoneX;
			y = 0.64 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_SpotterDiving', player, false]";
		};
		class RscButton_1607: RscButton
		{
			idc = 1607;
			text = "Anti-Air"; //--- ToDo: Localize;
			x = 0.625 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_AntiAirDiving', player, false]";
		};
		class RscButton_1608: RscButton
		{
			idc = 1608;
			text = "Anti-Air Ammo Bearer"; //--- ToDo: Localize;
			x = 0.625 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_AntiAirAmmoBearerDiving', player, false]";
		};
		class RscButton_1609: RscButton
		{
			idc = 1609;
			text = "Close"; //--- ToDo: Localize;
			x = 0.7125 * safezoneW + safezoneX;
			y = 0.66 * safezoneH + safezoneY;
			w = 0.0875 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "closeDialog 0";
		};
	};
};

