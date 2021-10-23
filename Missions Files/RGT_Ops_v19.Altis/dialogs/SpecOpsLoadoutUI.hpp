class SpecOpsLoadoutUI
{
	idd=-1;
	movingenable=false;
	
	class controls 
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 0.360781 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.28 * safezoneW;
			h = 0.55 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.5};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Reconnaissance Gear"; //--- ToDo: Localize;
			x = 0.415439 * safezoneW + safezoneX;
			y = 0.2294 * safezoneH + safezoneY;
			w = 0.16 * safezoneW;
			h = 0.055 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.08;
		};
		class IGUIBack_2202: IGUIBack
		{
			idc = 2202;
			x = 0.376256 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.22 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.4};
		};
		class IGUIBack_2203: IGUIBack
		{
			idc = 2203;
			x = 0.376251 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.22 * safezoneH;
			colorBackground[] = {0.1,0.1,0.1,0.4};
		};
		class RscText_1002: RscText
		{
			idc = 1002;
			text = "Tropical Camouflage Tops"; //--- ToDo: Localize;
			x = 0.404094 * safezoneW + safezoneX;
			y = 0.3108 * safezoneH + safezoneY;
			w = 0.19179 * safezoneW;
			h = 0.044 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.08;
		};
		class RscText_1003: RscText
		{
			idc = 1003;
			text = "Arid Camouflage Tops"; //--- ToDo: Localize;
			x = 0.419522 * safezoneW + safezoneX;
			y = 0.5528 * safezoneH + safezoneY;
			w = 0.16086 * safezoneW;
			h = 0.044 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.08;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			text = "Take Tropical Ghillie Top"; //--- ToDo: Localize;
			x = 0.399527 * safezoneW + safezoneX;
			y = 0.378444 * safezoneH + safezoneY;
			w = 0.2021 * safezoneW;
			h = 0.044 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_Ghillietrop1', player, false]";
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			text = "Take Ghillie Top w/o Hood"; //--- ToDo: Localize;
			x = 0.400652 * safezoneW + safezoneX;
			y = 0.445948 * safezoneH + safezoneY;
			w = 0.201069 * safezoneW;
			h = 0.044 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_Ghillietrop2', player, false]";
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			text = "Take Arid Ghillie Top"; //--- ToDo: Localize;
			x = 0.399828 * safezoneW + safezoneX;
			y = 0.621644 * safezoneH + safezoneY;
			w = 0.2021 * safezoneW;
			h = 0.044 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_Ghilliearid1', player, false]";
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			text = "Take Ghillie Top w/o Hood"; //--- ToDo: Localize;
			x = 0.399785 * safezoneW + safezoneX;
			y = 0.686904 * safezoneH + safezoneY;
			w = 0.2021 * safezoneW;
			h = 0.044 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.06;
			action = "remoteExec ['RGT_fnc_Ghilliearid2', player, false]";
		};
		class RscButton_1611: RscButton
		{
			idc = 1611;
			text = "Close"; //--- ToDo: Localize;
			x = 0.562 * safezoneW + safezoneX;
			y = 0.775156 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.0462 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0.1,0.1,0.1,1};
			sizeEx = 0.04;
			action = "closeDialog 0";
		};
	};
};

