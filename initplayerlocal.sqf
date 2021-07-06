construyendo = false;
ubicando = false;
//tab = 58
//blockmayus = 15

(findDisplay 46) displayRemoveAllEventHandlers "KeyDown"; //debug para sacar todos los EH
sleep 1;
_keydown = findDisplay 46 displayAddEventHandler ["KeyDown", {
    private _key = _this select 1;
    if (_key isequalto 20) then { // T
      _this spawn clv_fnc_TM_abrirMenuConstruccion;
    };

    if (_key isequalto 58) then {//TAB
      (getCursorObjectParams) call CLV_fnc_TM_interact;
    };
  }];


//construccion: 20 (T)
//menu accion (al lado del 1) definir

/*
player addAction
[
	"Construir",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script

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

		private _resp = [
			"img\ico\AA.paa",
			"img\ico\AT.paa",
			"img\ico\bunker.paa",
			"img\ico\mg1.paa",
			"img\ico\mg2.paa",
			"img\ico\trinchera1.paa",
			"img\ico\trinchera2.paa",
			"img\ico\mortero.paa"
		]call clv_fnc_TM_menuRadial8;

		if (_resp > 0) then {
			[_clases select (_resp - 1) ] call clv_fnc_fob_ubicar;
		};
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"[_this] call clv_fnc_fob_canbuild && attachedObjects _this isequalto []", 	// condition
	50,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
