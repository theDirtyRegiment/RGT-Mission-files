class StandardLoadoutUI
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
			h = 0.66 * safezoneH;
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
		class IGUIBack_2204: IGUIBack
		{
			idc = 2204;
			x = 0.6125 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.22 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.4};
		};
		class IGUIBack_2205 : IGUIBack
		{
			idc = 2205;
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
			text = "              Heavy AT Team"; //--- ToDo: Localize;
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
			text = "                  Mortar Team"; //--- ToDo: Localize;
			x = 0.4125 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.1875 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.06;
		};
		class RscText_1005: RscText
		{
			idc = 1005;
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
			action = "remoteExec ['RGT_fnc_ARAmmoBearer', player, false]";
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
			action = "remoteExec ['RGT_fnc_GrenadierAmmoBearer', player, false]";
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Heavy AT"; //--- ToDo: Localize;
			x = 0.425 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_jav', player, false]";
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "Heavy AT Ammo Bearer"; //--- ToDo: Localize;
			x = 0.425 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_HeavyATAmmoBearer', player, false]";
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "Mortar Gunner"; //--- ToDo: Localize;
			x = 0.425 * safezoneW + safezoneX;
			y = 0.56 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_Mortar_Tube', player, false]";
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			text = "Mortar Ammo Bearer"; //--- ToDo: Localize;
			x = 0.425 * safezoneW + safezoneX;
			y = 0.64 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_Mortar_Ammo', player, false]";
		};
		class RscButton_1609: RscButton
		{
			idc = 1609;
			text = "Anti-Air"; //--- ToDo: Localize;
			x = 0.625 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_AntiAir', player, false]";
		};
		class RscButton_1610: RscButton
		{
			idc = 1610;
			text = "Anti-Air Ammo Bearer"; //--- ToDo: Localize;
			x = 0.625 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_AntiAirAmmoBearer', player, false]";
		};
		class RscButton_1611: RscButton
		{
			idc = 1611;
			text = "Close"; //--- ToDo: Localize;
			x = 0.7125 * safezoneW + safezoneX;
			y = 0.74 * safezoneH + safezoneY;
			w = 0.0875 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "closeDialog 0";
		};
		class RscButton_1612: RscButton
		{
			idc = 1612;
			text = "MG Ammo Bearer"; //--- ToDo: Localize;
			x = 0.225 * safezoneW + safezoneX;
			y = 0.48 * safezoneH + safezoneY;
			w = 0.1625 * safezoneW;
			h = 0.06 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_MGAmmoBearer', player, false]";
		};
	};
};
