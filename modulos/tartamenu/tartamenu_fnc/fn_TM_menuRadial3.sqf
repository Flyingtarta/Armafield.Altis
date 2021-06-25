//["0.365937 * safezoneW + safezoneX","0.269 * safezoneH + safezoneY","0.257813 * safezoneW","0.462 * safezoneH"]
/*
	Descripcion:

	Author:
		[calaveras] FlyingTarta

	Fecha:
		19/6/2021

	Falta:
		-

	Input:
		0: (object) objeto

	Return:
		number : respuesta del menu (-1) is sale con escape
*/


#define TARTAMENU 1314
//botones
#define BOTON0 1400
#define BOTON1 1401
#define BOTON2 1402
#define BOTON3 1403
//imagenes
#define IMG0 1410
#define IMG1 1411
#define IMG2 1412
#define IMG3 1413

params [["_img1",""],["_img2",""],["_img3",""],["_materiales",true],["_img0","modulos\tartamenu\tartamenu_img\ico\atras.paa"]];

//armamos el menu poniendole las images
createDialog "TartaMenu_3";
waituntil {!(isnull (finddisplay TARTAMENU))};
_mmenu = "";
if (_materiales) then {
  _mmenu = findDisplay 46 createDisplay "materiales_inmenu";
};


ctrlSetText [IMG0,_img0];
ctrlSetText [IMG1,_img1];
ctrlSetText [IMG2,_img2];
ctrlSetText [IMG3,_img3];


//inicimos el menu y esperamos respuesta del jugador
localnamespace setvariable ["TARTAMENU_OUTPUT",-1];

waituntil { localnamespace getvariable ["TARTAMENU_OUTPUT",-1] isnotequalto -1 || isnull(finddisplay TARTAMENU) };
_respuesta = localnamespace getvariable ["TARTAMENU_OUTPUT",-1];
closeDialog 1;
_mmenu closedisplay 1;
_respuesta



/*_handler = (findDisplay TARTAMENU) displayAddEventHandler ["onMouseButtonDown",{systemchat str _this;true}];
hint str _handler;

//ctrlSetText [idc, text]
