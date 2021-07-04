//["0.365937 * safezoneW + safezoneX","0.269 * safezoneH + safezoneY","0.257813 * safezoneW","0.462 * safezoneH"]
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

#define displayRecursos 3333
#define muni   3000
#define mate   3001
#define muni_c 3002
#define mate_c 3003

params [["_img1",""],["_img2",""],["_img3",""],["_img4",""],["_img5",""],["_img6",""],["_img7",""],["_img8",""],["_materiales",false],["_costos",[]],["_img0","modulos\tartamenu\tartamenu_img\ico\atras.paa"]];

//armamos el menu poniendole las images
createDialog "TartaMenu_8";
waituntil {!(isnull (finddisplay TARTAMENU))};

_handle = ppEffectCreate ["DynamicBlur",0];
_handle ppEffectEnable true;
_handle ppEffectAdjust [1];
_handle ppEffectCommit -1;

_mmenu = "";
_hdler = [];
if (_materiales) then {
  _mmenu = findDisplay 46 createDisplay "materiales_inmenu";
  private _recursos =  [player] call clv_fnc_fob_recursosDisp;
  ((findDisplay displayRecursos) displayCtrl muni) ctrlSetText str(_recursos #0);
  ((findDisplay displayRecursos) displayCtrl mate) ctrlSetText str(_recursos #1);
};

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

waituntil {
  if (_materiales) then {
    if (_costos isnotequalto [] ) then {
      _idx = localnamespace getvariable ["TARTAMENU_SELECT",-1];
      if (_idx > 0) then {
        _recursos = _costos select (_idx-1);
        ( (findDisplay displayRecursos) displayCtrl mate_c) ctrlSetText str ( (_recursos #0)*-1); // materiales
        ( (findDisplay displayRecursos) displayCtrl muni_c) ctrlSetText str ( (_recursos #1)*-1); // municion
        ( (findDisplay displayRecursos) displayCtrl mate_c) ctrlSetTextColor [1, 0.2, 0.2, 1];
        ( (findDisplay displayRecursos) displayCtrl muni_c) ctrlSetTextColor [1, 0.2, 0.2, 1];
      }else{
        ( (findDisplay displayRecursos) displayCtrl muni_c) ctrlSetText str (0); // materiales
        ( (findDisplay displayRecursos) displayCtrl mate_c) ctrlSetText str (0); // municion
      }
    };
  };
  localnamespace getvariable ["TARTAMENU_OUTPUT",-1] isnotequalto -1 || isnull(finddisplay TARTAMENU)
};

_respuesta = localnamespace getvariable ["TARTAMENU_OUTPUT",-1];
if (_materiales) then {
  _mmenu closedisplay 1;
};
_handle ppEffectEnable false;
ppEffectDestroy _handle;
closeDialog 1;
_respuesta



/*_handler = (findDisplay TARTAMENU) displayAddEventHandler ["onMouseButtonDown",{systemchat str _this;true}];
hint str _handler;

//ctrlSetText [idc, text]
