
class TartaMenu_8 {
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
		text = "modulos\tartamenu\img\tartamenu\menu_8\fondo.paa";
		x = 0.365937 * safezoneW + safezoneX;
		y = 0.269 * safezoneH + safezoneY;
		w = 0.257813 * safezoneW;
		h = 0.462 * safezoneH;
	};
	class tartamenu_boton_1: RscEdit
	{
		idc = 1401;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_8\s1.paa']}";
		onMouseButtonDown = "if (ctrltext 1411 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',1] } else { closeDialog 1 }";
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
		onMouseMoving = " if (  _this select 3 && (ctrltext 1412 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_8\s2.paa']}";
		onMouseButtonDown = "if (ctrltext 1412 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',2] } else { closeDialog 1 }";
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
		onMouseMoving = " if (  _this select 3 && (ctrltext 1413 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_8\s3.paa']}";
		onMouseButtonDown = "if (ctrltext 1413 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',3] } else { closeDialog 1 }";
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
		onMouseMoving = " if ( _this select 3 && (ctrltext 1414 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_8\s4.paa']}";
		onMouseButtonDown = "if (ctrltext 1414 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',4] } else { closeDialog 1 }";
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
		onMouseMoving = " if (  _this select 3 && (ctrltext 1415 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_8\s5.paa']}";
		onMouseButtonDown = "if (ctrltext 1415 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',5] } else { closeDialog 1 }";
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
		onMouseMoving = " if (  _this select 3 && (ctrltext 1416 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_8\s6.paa']}";
		onMouseButtonDown = "if (ctrltext 1416 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',6] } else { closeDialog 1 }";
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
		onMouseMoving = " if (  _this select 3 && (ctrltext 1417 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_8\s7.paa']}";
		onMouseButtonDown = "if (ctrltext 1417 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',7] } else { closeDialog 1 }";
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
		onMouseMoving = " if (  _this select 3 && (ctrltext 1418 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_8\s8.paa']}";
		onMouseButtonDown = "if (ctrltext 1418 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',8] } else { closeDialog 1 }";
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
		onMouseMoving = "if (_this select 3 && (ctrltext 1410 isnotequalto '') ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_8\s0.paa']}";
		onMouseButtonDown = "if (ctrltext 1410 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',0] } else { closeDialog 1 }";
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	/////////////////////IMAGENES/////////////////////////////////////////////////
/*
	class tartamenu_imagen_0: RscPicture
	{
		idc = 1201;
		text = "";
		x = 0.577344 * safezoneW + safezoneX;
		y = 0.456 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.088 * safezoneH;
	};
*/
	class tartamenu_imagen_1: RscPicture
	{
		idc = 1411;
		text = "";
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.313 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};

	class tartamenu_imagen_2: RscPicture
	{
		idc = 1412;
		text = "";
		x = 0.536094 * safezoneW + safezoneX;
		y = 0.357 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};

	class tartamenu_imagen_3: RscPicture
	{
		idc = 1413;
		text = "";
		x = 0.561875 * safezoneW + safezoneX;
		y = 0.456 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_4: RscPicture
	{
		idc = 1414;
		text = "";
		x = 0.530937 * safezoneW + safezoneX;
		y = 0.566 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_5: RscPicture
	{
		idc = 1415;
		text = "";
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.61 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_6: RscPicture
	{
		idc = 1416;
		text = "";
		x = 0.4175 * safezoneW + safezoneX;
		y = 0.566 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_7: RscPicture
	{
		text = "";
		idc = 1417;
		x = 0.386562 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_8: RscPicture
	{
		text = "";
		idc = 1418;
		x = 0.4175 * safezoneW + safezoneX;
		y = 0.357 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class tartamenu_imagen_centro: RscPicture
	{
		idc = 1410;
		text = "";
		x = 0.479375 * safezoneW + safezoneX;
		y = 0.544 * safezoneH + safezoneY;
		w = 0.0309375 * safezoneW;
		h = 0.066 * safezoneH;
	};
};
