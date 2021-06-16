
class TartaMenu {
	idd= 1314;
	controls[]={
			menu_base,
			tartamenu_boton_1,
			tartamenu_imagen_1 ,
			tartamenu_boton_2,
			tartamenu_imagen_2 ,
			tartamenu_boton_3,
			tartamenu_imagen_3 ,
			tartamenu_boton_4,
			tartamenu_imagen_4 ,
			tartamenu_boton_5,
			tartamenu_imagen_5 ,
			tartamenu_boton_6,
			tartamenu_imagen_6 ,
			tartamenu_boton_7,
			tartamenu_imagen_7 ,
			tartamenu_boton_8,
			tartamenu_imagen_8 ,
			tartamenu_boton_centro,
			tartamenu_imagen_centro
		};
	controlBackground[]={};

	class menu_base: RscPicture
	{
		idc = 1200;
		text = "img\Fmenu\v.paa";
		x = 0.365937 * safezoneW + safezoneX;
		y = 0.269 * safezoneH + safezoneY;
		w = 0.257813 * safezoneW;
		h = 0.462 * safezoneH;
	};
	class tartamenu_boton_1: RscEdit
	{
		idc = 1401;
		onMouseMoving = " if ( _this select 3 ) then {ctrlsettext [1200,'img\Fmenu\s1.paa']}";
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.313 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};

	class tartamenu_boton_2: RscEdit
	{
		idc = 1402;
		onMouseMoving = " if ( _this select 3 ) then {ctrlsettext [1200,'img\Fmenu\s2.paa']}";
		x = 0.536094 * safezoneW + safezoneX;
		y = 0.357 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};

	class tartamenu_boton_3: RscEdit
	{
		idc = 1403;
		onMouseMoving = " if ( _this select 3 ) then {ctrlsettext [1200,'img\Fmenu\s3.paa']}";
		x = 0.561875 * safezoneW + safezoneX;
		y = 0.456 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class tartamenu_boton_4: RscEdit
	{
		idc = 1404;
		onMouseMoving = " if ( _this select 3 ) then {ctrlsettext [1200,'img\Fmenu\s4.paa']}";
		x = 0.530937 * safezoneW + safezoneX;
		y = 0.566 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class tartamenu_boton_5: RscEdit
	{
		idc = 1405;
		onMouseMoving = " if ( _this select 3 ) then {ctrlsettext [1200,'img\Fmenu\s5.paa']}";
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.61 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class tartamenu_boton_6: RscEdit
	{
		idc = 1406;
		onMouseMoving = " if ( _this select 3 ) then {ctrlsettext [1200,'img\Fmenu\s6.paa']}";
		x = 0.4175 * safezoneW + safezoneX;
		y = 0.566 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class tartamenu_boton_7: RscEdit
	{
		idc = 1407;
		onMouseMoving = " if ( _this select 3 ) then {ctrlsettext [1200,'img\Fmenu\s7.paa']}";
		x = 0.386562 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class tartamenu_boton_8: RscEdit
	{
		idc = 1408;
		onMouseMoving = " if ( _this select 3 ) then {ctrlsettext [1200,'img\Fmenu\s8.paa']}";
		x = 0.4175 * safezoneW + safezoneX;
		y = 0.357 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class tartamenu_boton_centro: RscEdit
	{
		idc = 1400;
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
		onMouseMoving = " if ( _this select 3 ) then {ctrlsettext [1200,'img\Fmenu\s0.paa']}";
	};
	/////////////////////IMAGENES/////////////////////////////////////////////////
/*
	class tartamenu_imagen_0: RscPicture
	{
		idc = 1201;
		text = "img\ico\martillo.paa";
		x = 0.577344 * safezoneW + safezoneX;
		y = 0.456 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.088 * safezoneH;
	};
*/
	class tartamenu_imagen_1: RscPicture
	{
		idc = 1411;
		text = "img\ico\martillo.paa";
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.313 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};

	class tartamenu_imagen_2: RscPicture
	{
		idc = 1412;
		text = "img\ico\martillo.paa";
		x = 0.536094 * safezoneW + safezoneX;
		y = 0.357 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};

	class tartamenu_imagen_3: RscPicture
	{
		idc = 1413;
		text = "img\ico\martillo.paa";
		x = 0.561875 * safezoneW + safezoneX;
		y = 0.456 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_4: RscPicture
	{
		idc = 1414;
		text = "img\ico\martillo.paa";
		x = 0.530937 * safezoneW + safezoneX;
		y = 0.566 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_5: RscPicture
	{
		idc = 1415;
		text = "img\ico\martillo.paa";
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.61 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_6: RscPicture
	{
		idc = 1416;
		text = "img\ico\martillo.paa";
		x = 0.4175 * safezoneW + safezoneX;
		y = 0.566 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_7: RscPicture
	{
		text = "img\ico\martillo.paa";
		idc = 1417;
		x = 0.386562 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_8: RscPicture
	{
		text = "img\ico\martillo.paa";
		idc = 1418;
		x = 0.4175 * safezoneW + safezoneX;
		y = 0.357 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_centro: RscPicture
	{
		text = "img\ico\martillo.paa";
		idc = 1410;
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;

	};
};
