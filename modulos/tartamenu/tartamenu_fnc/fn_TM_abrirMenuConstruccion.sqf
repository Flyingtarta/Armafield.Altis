#define fobs ["Land_HBarrierTower_F","Land_TentDome_F"]



params ["_displayorcontrol", "_key", "_shift", "_ctrl", "_alt"];

// Si el menu ya esta abierto sale
if !( isnull(findDisplay 1314)) exitwith {};
if !(isnull( objectparent player)) exitwith {};

/*
    Menu de 3 con :
    1 - Fortificaciones | Falta logo
    2 - Armamento       | falta hacer logo
    3 - FOB             | logo fob
    - Sin costos
*/

private _MenuConstruccion = [

  "modulos\tartamenu\tartamenu_img\ico\build.paa",
  "\A3\Static_F_Gamma\data\UI\map_StaticTurret_AA_CA.paa", // remplazar
  "modulos\tartamenu\tartamenu_img\ico\FOB.paa"
] call clv_fnc_TM_menuRadial3;

switch (_menuConstruccion) do {

    case 1: {
      //fortificaciones (menu de 8)
      [] call clv_fnc_TM_forti;
    };

    case 2: {
      if (side player isequalto east) then { [] call clv_fnc_TM_HMred};
      if (side player isequalto west) then { [] call clv_fnc_TM_HMblue};
      hint "WIP | ARMAMENTO PESADO";
    };

    case 3: { // FOB
      [] call clv_fnc_fob_crearFob;
    };
};




/*

//systemchat str [isnull(findDisplay 1314), _key isequalto 41];
if (isnull(findDisplay 1314)) then {
  private _resp = [
    "modulos\tartamenu\tartamenu_img\ico\build.paa",
    "modulos\tartamenu\tartamenu_img\ico\rally.paa",
    ""
  ] call clv_fnc_TM_menuRadial3;

  if (_resp isequalto 1) then { //si elige a construir
    if !([player] call clv_fnc_fob_canbuild && attachedObjects player isequalto []) exitWith {Hint "No podes construir en este momento"};
    private _clases = [
      "B_T_Static_AA_F",
      "O_static_AT_F",
      "Land_BagBunker_01_small_green_F",
      "B_HMG_01_A_F",
      "B_HMG_01_high_F",
      "Land_BagFence_01_long_green_F",
      "Land_BagFence_01_round_green_F",
      "O_G_Mortar_01_F"
    ];

    _resp = [
      "modulos\tartamenu\tartamenu_img\ico\AA.paa",
      "modulos\tartamenu\tartamenu_img\ico\AT.paa",
      "modulos\tartamenu\tartamenu_img\ico\bunker.paa",
      "modulos\tartamenu\tartamenu_img\ico\mg1.paa",
      "modulos\tartamenu\tartamenu_img\ico\mg2.paa",
      "modulos\tartamenu\tartamenu_img\ico\trinchera1.paa",
      "modulos\tartamenu\tartamenu_img\ico\trinchera2.paa",
      "modulos\tartamenu\tartamenu_img\ico\mortero.paa",
      true,//mostrar materiales
      [//costos
        [100,100],//costo 1
        [500,0],//costo 2
        [100,200],//costo 3
        [100,200],//costo 4
        [300,0],//costo 5
        [300,0],//costo 6
        [300,0],//costo 7
        [100,500]//costo 8
      ]
    ]call clv_fnc_TM_menuRadial8;

    if (_resp > 0) then {
      [_clases select (_resp - 1) ] call clv_fnc_fob_ubicar;
    };
  };

  if (_resp isequalto 2) then {
    if !([player] call clv_fnc_fob_canbuild && attachedObjects player isequalto []) exitWith {Hint "No podes construir un fob en este momento"};
    hint "WIP construir FOB";
  };

};
