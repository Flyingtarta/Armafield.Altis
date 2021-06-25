class TartaMenu_3 {
	idd= 1314;
	controls[]={
			menu_base,
			tartamenu_boton_1,
			tartamenu_imagen_1 ,
			tartamenu_boton_2,
			tartamenu_imagen_2 ,
			tartamenu_boton_3,
			tartamenu_imagen_3 ,
			tartamenu_boton_centro,
			tartamenu_imagen_centro
		};
	controlBackground[]={};

	class menu_base: RscPicture
	{
		idc = 1200;
		text = "modulos\tartamenu\img\tartamenu\menu_3\fondo.paa";
		x = 0.365937 * safezoneW + safezoneX;
		y = 0.269 * safezoneH + safezoneY;
		w = 0.257813 * safezoneW;
		h = 0.462 * safezoneH;
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
	class tartamenu_imagen_1: RscPicture
	{
		idc = 1411;
		text = "";
		x = 0.469062 * safezoneW + safezoneX;
		y = 0.302 * safezoneH + safezoneY;
		w = 0.0515625 * safezoneW;
		h = 0.088 * safezoneH;
	};
	class tartamenu_imagen_2: RscPicture
	{
		idc = 1412;
		text = "";
		x = 0.54125 * safezoneW + safezoneX;
		y = 0.555 * safezoneH + safezoneY;
		w = 0.0515625 * safezoneW;
		h = 0.088 * safezoneH;
	};
	class tartamenu_imagen_3: RscPicture
	{
		idc = 1413;
		text = "";
		x = 0.396875 * safezoneW + safezoneX;
		y = 0.555 * safezoneH + safezoneY;
		w = 0.0515625 * safezoneW;
		h = 0.088 * safezoneH;
	};

	//BOTOES

	class tartamenu_boton_1: RscEdit
	{
		idc = 1401;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_3\s1.paa']}";
		onMouseButtonDown = "if (ctrltext 1411 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',1] } else { closeDialog 1 }";

		x = 0.469062 * safezoneW + safezoneX;
		y = 0.302 * safezoneH + safezoneY;
		w = 0.0515625 * safezoneW;
		h = 0.088 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class tartamenu_boton_2: RscEdit
	{
		idc = 1402;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1412 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_3\s2.paa']}";
		onMouseButtonDown = "if (ctrltext 1411 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',2] } else { closeDialog 1 }";
		x = 0.54125 * safezoneW + safezoneX;
		y = 0.555 * safezoneH + safezoneY;
		w = 0.0515625 * safezoneW;
		h = 0.088 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class tartamenu_boton_3: RscEdit
	{
		idc = 1403;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1413 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_3\s3.paa']}";
		onMouseButtonDown = "if (ctrltext 1411 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',3] } else { closeDialog 1 }";
		x = 0.396875 * safezoneW + safezoneX;
		y = 0.555 * safezoneH + safezoneY;
		w = 0.0515625 * safezoneW;
		h = 0.088 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class tartamenu_boton_centro: RscEdit
	{
		idc = 1400;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1410 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_3\s0.paa']}";
		onMouseButtonDown = "if (ctrltext 1411 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',0] } else { closeDialog 1 }";
		x = 0.45875 * safezoneW + safezoneX;
		y = 0.445 * safezoneH + safezoneY;
		w = 0.0721875 * safezoneW;
		h = 0.11 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
};
