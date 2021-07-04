//#define forti ["Land_BagBunker_Small_F","Land_ConcreteHedgehog_01_F","Land_Razorwire_F","Land_SandbagBarricade_01_half_F","Land_SandbagBarricade_01_F","Land_SandbagBarricade_01_hole_F","Land_BagFence_Long_F","Land_BagFence_Round_F"]

#define forti ["Land_BagBunker_Small_F","Land_BagFence_Long_F","Land_BagFence_Round_F","Land_SandbagBarricade_01_F","Land_SandbagBarricade_01_hole_F","Land_Razorwire_F","Land_ConcreteHedgehog_01_F"]

//referencia //[_this] call clv_fnc_fob_canbuild && attachedObjects _this isequalto []
if (attachedObjects player isnotequalto [] ) exitwith {hint "Ya estas construyendo "};

private _costos =
  [//costos
    [0,500], //bunker
    [0,150], //trinchera |
    [0,150], //trinchera C
    [0,250], //trinchera pesada
    [0,250], //trinchera pesada con agujerito
    [0,100],  //barbedwire
    [0,500], //tank trap
    [0,0]
  ];

private _resp = [
  "modulos\tartamenu\tartamenu_img\ico\buildmenu\bunker.paa",
  "modulos\tartamenu\tartamenu_img\ico\buildmenu\trinchera1.paa",
  "modulos\tartamenu\tartamenu_img\ico\buildmenu\trinchera2.paa",
  "modulos\tartamenu\tartamenu_img\ico\buildmenu\sandbag_b.paa",
  "modulos\tartamenu\tartamenu_img\ico\buildmenu\sandbag_hole.paa",
  "modulos\tartamenu\tartamenu_img\ico\buildmenu\bbwire.paa",
  "modulos\tartamenu\tartamenu_img\ico\buildmenu\tankTrap.paa",
  "",
  true,
  _costos
] call clv_fnc_TM_menuRadial8;

//si no se selecciono nada sale
if (_resp isequalto -1) exitWith{};

if (_resp isequalto 0) exitwith { // si selecciono el central, vuelve al menu anterior
  waituntil {isnull(finddisplay 1314)};
  [] call clv_fnc_TM_abrirMenuConstruccion
};
// a partir de aca queremos el index nomas
private _resp = _resp -1;
private _costo = _costos select _resp;
_costo params ["_ammo","_mater"];

_desc = [_costo] call clv_fnc_TM_deltaMateriales;

/*
FALTA DESCONTAR PLATA AL CONTRUIR,
EN CASO DE CANCELAR QUE NO DESCUENTE
PODER "PAUSAR" PARA USAR ALGO PARCIAL
*/
if (_desc) then {
  [forti select _resp] call clv_fnc_fob_ubicar;
};
