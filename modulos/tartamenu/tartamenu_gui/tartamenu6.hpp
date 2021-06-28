class TartaMenu_6 {
	idd= 1314;

	controls[]=
	{
		fondo,
		boton1,
		boton2,
		boton3,
		boton4,
		boton0,
		img0,
		img1,
		igm2,
		img3,
		img4,
		img5,
		img6,
		boton5,
		boton6
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT START (by Tarta, v1.063, #Rydobi)
	////////////////////////////////////////////////////////

	class fondo: RscPicture
	{
		idc = 1200;
		text = "modulos\tartamenu\img\tartamenu\menu_6\menu6_base.paa";
		x = 7 * GUI_GRID_W + GUI_GRID_X;
		y = 2 * GUI_GRID_H + GUI_GRID_Y;
		w = 25 * GUI_GRID_W;
		h = 21 * GUI_GRID_H;
	};
	//botones
	class boton0: RscEdit
	{
		idc = 1400;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_6\s0.paa'];localnamespace setvariable ['TARTAMENU_SELECT',0]}";
		onMouseButtonDown = "if (ctrltext 1410 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',0] } else { closeDialog 1 }";
		x = 0.45875 * safezoneW + safezoneX;
		y = 0.434 * safezoneH + safezoneY;
		w = 0.0721875 * safezoneW;
		h = 0.132 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class boton1: RscEdit
	{
		idc = 1401;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_6\s1.paa'];localnamespace setvariable ['TARTAMENU_SELECT',1]}";
		onMouseButtonDown = "if (ctrltext 1411 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',1] } else { closeDialog 1 }";
		x = 0.510312 * safezoneW + safezoneX;
		y = 0.313 * safezoneH + safezoneY;
		w = 0.0515625 * safezoneW;
		h = 0.088 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class boton2: RscEdit
	{
		idc = 1402;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_6\s2.paa'];localnamespace setvariable ['TARTAMENU_SELECT',2]}";
		onMouseButtonDown = "if (ctrltext 1412 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',2] } else { closeDialog 1 }";
		x = 0.556719 * safezoneW + safezoneX;
		y = 0.456 * safezoneH + safezoneY;
		w = 0.0567187 * safezoneW;
		h = 0.099 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class boton3: RscEdit
	{
		idc = 1403;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_6\s3.paa'];localnamespace setvariable ['TARTAMENU_SELECT',3]}";
		onMouseButtonDown = "if (ctrltext 1413 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',3] } else { closeDialog 1 }";
		x = 0.510312 * safezoneW + safezoneX;
		y = 0.588 * safezoneH + safezoneY;
		w = 0.0567187 * safezoneW;
		h = 0.099 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class boton4: RscEdit
	{
		idc = 1404;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_6\s4.paa'];localnamespace setvariable ['TARTAMENU_SELECT',4]}";
		onMouseButtonDown = "if (ctrltext 1414 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',4] } else { closeDialog 1 }";
		x = 0.422656 * safezoneW + safezoneX;
		y = 0.588 * safezoneH + safezoneY;
		w = 0.0567187 * safezoneW;
		h = 0.099 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class boton5: RscEdit
	{
		idc = 1405;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_6\s5.paa'];localnamespace setvariable ['TARTAMENU_SELECT',5]}";
		onMouseButtonDown = "if (ctrltext 1415 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',5] } else { closeDialog 1 }";
		x = 0.381406 * safezoneW + safezoneX;
		y = 0.456 * safezoneH + safezoneY;
		w = 0.0567187 * safezoneW;
		h = 0.099 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};
	class boton6: RscEdit
	{
		idc = 1406;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_6\s6.paa'];localnamespace setvariable ['TARTAMENU_SELECT',6]}";
		onMouseButtonDown = "if (ctrltext 1416 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',6] } else { closeDialog 1 }";
		x = 0.427812 * safezoneW + safezoneX;
		y = 0.313 * safezoneH + safezoneY;
		w = 0.0515625 * safezoneW;
		h = 0.088 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};

	//imagenes
	class img0: RscPicture
	{
		idc = 1410;
		text = "";
		x = 0.479375 * safezoneW + safezoneX;
		y = 0.522 * safezoneH + safezoneY;
		w = 0.0309375 * safezoneW;
		h = 0.055 * safezoneH;
	};
	class img1: RscPicture
	{
		idc = 1411;
		text = "";
		x = 0.515469 * safezoneW + safezoneX;
		y = 0.324 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class igm2: RscPicture
	{
		idc = 1412;
		text = "";
		x = 0.561875 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class img3: RscPicture
	{
		idc = 1413;
		text = "";
		x = 0.515469 * safezoneW + safezoneX;
		y = 0.599 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class img4: RscPicture
	{
		idc = 1414;
		text = "";
		x = 0.427813 * safezoneW + safezoneX;
		y = 0.599 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class img5: RscPicture
	{
		idc = 1415;
		text = "";
		x = 0.386562 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class img6: RscPicture
	{
		idc = 1416;
		text = "";
		x = 0.427812 * safezoneW + safezoneX;
		y = 0.324 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.077 * safezoneH;
	};
	////////////////////////////////////////////////////////
	// GUI EDITOR OUTPUT END
	////////////////////////////////////////////////////////
};
