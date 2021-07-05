/*
  clv_fnc_TM_HMblue
  BLUEFOR
  EJECUCION LOCAL

  Descripcion:
    Funcion de menu de construccion de Armas pesadas por medio de TartaMenu

  input:
    none

  output:
    none
*/

#define montadas ["I_HMG_01_high_F","I_static_AT_F","I_GMG_01_high_F","I_Mortar_01_F"]

//Sale si ya esta construyendo
if (attachedObjects player isnotequalto [] ) exitwith {hint "Ya estas construyendo "};

private _costos =
  [//costos
    [200,50], // MG .50
    [250,50], // AT
    [400,50], // Mg 20mm
    [500,100] // Mortero
];

private _resp =
  [
    "modulos\tartamenu\tartamenu_img\ico\buildmenu\mg1.paa",    // MG .50
    "modulos\tartamenu\tartamenu_img\ico\buildmenu\AT.paa",     // AT
    "modulos\tartamenu\tartamenu_img\ico\buildmenu\mg1.paa",    // Mg 20mm
    "modulos\tartamenu\tartamenu_img\ico\buildmenu\mortero.paa",// Mortero
  true,
  _costos
] call clv_fnc_TM_menuRadial4;

if (_resp isequalto -1) exitWith{};

if (_resp isequalto 0) exitWith{ // si selecciono el central, vuelve al menu anterior
  waituntil {isnull(finddisplay 1314)};
  [] call clv_fnc_TM_abrirMenuConstruccion
};

private _resp = _resp -1;

[montadas select _resp] call clv_fnc_fob_ubicar;
