
#define montadasBlue ["VTN_M240G_M122","VTN_M2HB_WDL","B_GMG_01_high_F","B_G_Mortar_01_F"]
#define montadasRed  ["VTN_KORD_6T19_SPP","VTN_KORD_6T20","VTN_METIS_M1_RC","B_G_Mortar_01_F","VTN_ZU23_FLR"]
#define forti        ["Land_BagBunker_Small_F","Land_ConcreteHedgehog_01_F","Land_Razorwire_F","Land_SandbagBarricade_01_half_F","Land_SandbagBarricade_01_F","Land_SandbagBarricade_01_hole_F","Land_BagFence_Long_F","Land_BagFence_Round_F"]
#define fobs         ["Land_HBarrierTower_F","Land_TentDome_F"]



params ["_displayorcontrol", "_key", "_shift", "_ctrl", "_alt"];

// Si el menu ya esta abierto sale
if !(isnull(findDisplay 1314)) exitwith {};

/*
    Menu de 3 con :
    1 - Fortificaciones | Falta logo
    2 - Armamento       | falta hacer logo
    3 - FOB             | logo fob
  - Sin costos
*/

private _MenuConstruccion = [

  "modulos\tartamenu\tartamenu_img\ico\build.paa",
  "modulos\tartamenu\tartamenu_img\ico\AA.paa", // remplazar
  "modulos\tartamenu\tartamenu_img\ico\rally.paa"
] call clv_fnc_TM_menuRadial3;


switch (_menuConstruccion) do {

    case 1: {
      /* falta expandir
      Menu de 6 con :
      1 - Bunker
      2 - bolsas |
      3 - Bolsas C
      4 - Bolsa altas 1
      5 - Bolsa alta 2
      */
      hint "WIP | FORTIFICACIONES";
    };

    case 2: {
      /*
      Menu de 6 con :
      1 - .50 Alta
      2 - .50 Baja
      3 - .50 mira op / version rusa
      4 - AT
      5 - ATGM
      6 - Mortero
      */

      hint "WIP | ARMAMENTO PESADO";
    };

    case 3: { // FOB
      /*
      Menu de 3 con :
      1 - FOB   | Falta logo
      2 - RALLY |  Falta logo
      3 - nada
      */
      hint "WIN  | FOB de respawn";

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
