class TartaMenu_4 {
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
		img4
	};
	class fondo: RscPicture
	{
		idc = 1200;
		text = "modulos\tartamenu\img\tartamenu\menu_4\menu4_base.paa";
		x = 0.365937 * safezoneW + safezoneX;
		y = 0.269 * safezoneH + safezoneY;
		w = 0.257813 * safezoneW;
		h = 0.462 * safezoneH;
	};

	class boton0: RscEdit
	{
		idc = 1400;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1414 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_4\s0.paa'];localnamespace setvariable ['TARTAMENU_SELECT',0]}";
		onMouseButtonDown = "if (ctrltext 1414 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',0] } else { closeDialog 1 }";
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
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1412 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_4\s1.paa'];localnamespace setvariable ['TARTAMENU_SELECT',1]}";
		onMouseButtonDown = "if (ctrltext 1412 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',1] } else { closeDialog 1 }";
		x = 0.561875 * safezoneW + safezoneX;
		y = 0.401 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.198 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};

	class boton2: RscEdit
	{
		idc = 1402;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1413 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_4\s2.paa'];localnamespace setvariable ['TARTAMENU_SELECT',2]}";
		onMouseButtonDown = "if (ctrltext 1413 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',2] } else { closeDialog 1 }";
		x = 0.438125 * safezoneW + safezoneX;
		y = 0.621 * safezoneH + safezoneY;
		w = 0.108281 * safezoneW;
		h = 0.066 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};


	class boton3: RscEdit
	{
		idc = 1403;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1414 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_4\s3.paa'];localnamespace setvariable ['TARTAMENU_SELECT',3]}";
		onMouseButtonDown = "if (ctrltext 1414 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',3] } else { closeDialog 1 }";
		x = 0.386562 * safezoneW + safezoneX;
		y = 0.401 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.198 * safezoneH;
		colorText[] = {1,1,1,0};
		colorBackground[] = {1,1,1,0};
	};

	class boton4: RscEdit
	{
		idc = 1404;
		onMouseMoving = " if (  _this select 3 && ( ctrltext 1411 isnotequalto '')  ) then {ctrlsettext [1200,'modulos\tartamenu\img\tartamenu\menu_4\s4.paa'];localnamespace setvariable ['TARTAMENU_SELECT',4]}";
		onMouseButtonDown = "if (ctrltext 1411 isnotequalto '') then { localnamespace setvariable ['TARTAMENU_OUTPUT',4] } else { closeDialog 1 }";
		x = 0.438125 * safezoneW + safezoneX;
		y = 0.313 * safezoneH + safezoneY;
		w = 0.108281 * safezoneW;
		h = 0.066 * safezoneH;
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
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.302 * safezoneH + safezoneY;
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
		x = 0.474219 * safezoneW + safezoneX;
		y = 0.621 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.077 * safezoneH;
	};
	class img4: RscPicture
	{
		idc = 1414;
		text = "";
		x = 0.386562 * safezoneW + safezoneX;
		y = 0.467 * safezoneH + safezoneY;
		w = 0.0464063 * safezoneW;
		h = 0.077 * safezoneH;
	};
};
