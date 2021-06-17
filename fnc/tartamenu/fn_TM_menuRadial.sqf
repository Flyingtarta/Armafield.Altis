/*
	Descripcion:

	Author:
		[calaveras] FlyingTarta

	Fecha:
		3/6/2021

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
#define BOTON4 1404
#define BOTON5 1405
#define BOTON6 1406
#define BOTON7 1407
#define BOTON8 1408
//imagenes
#define IMG0 1410
#define IMG1 1411
#define IMG2 1412
#define IMG3 1413
#define IMG4 1414
#define IMG5 1415
#define IMG6 1416
#define IMG7 1417
#define IMG8 1418

params [["_img1",""],["_img2",""],["_img3",""],["_img4",""],["_img5",""],["_img6",""],["_img7",""],["_img8",""],["_img0","img\ico\atras.paa"]];

//armamos el menu poniendole las images
createDialog "TartaMenu";
waituntil {!(isnull (finddisplay TARTAMENU))};

ctrlSetText [IMG0,_img0];
ctrlSetText [IMG1,_img1];
ctrlSetText [IMG2,_img2];
ctrlSetText [IMG3,_img3];
ctrlSetText [IMG4,_img4];
ctrlSetText [IMG5,_img5];
ctrlSetText [IMG6,_img6];
ctrlSetText [IMG7,_img7];
ctrlSetText [IMG8,_img8];



//inicimos el menu y esperamos respuesta del jugador
localnamespace setvariable ["TARTAMENU_OUTPUT",-1];

waituntil { localnamespace getvariable ["TARTAMENU_OUTPUT",-1] isnotequalto -1 || isnull(finddisplay TARTAMENU) };
_respuesta = localnamespace getvariable ["TARTAMENU_OUTPUT",-1];
closeDialog 1;
_respuesta



/*_handler = (findDisplay TARTAMENU) displayAddEventHandler ["onMouseButtonDown",{systemchat str _this;true}];
hint str _handler;

//ctrlSetText [idc, text]
