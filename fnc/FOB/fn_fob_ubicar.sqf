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
		objeto : objeto creado
*/
_modelo = "Land_HBarrierTower_F";//"Land_BagBunker_Tower_F";

//params["_objeto","_distancia"];

private _pos = getpos player getpos [getdir player,10];
forti = _modelo createVehiclelocal _pos; // lo creamos "global" al jugador
private _forti = forti;
_forti attachto [player,[0,10,0]];

//addaction para ubicar la fortificacion
_ubicar = player addAction
[
	"<t color='#01FA6C'>Ubicar</t>",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		private _forti = forti;
		private _dir = getdir _forti;
		private _pos = getpos _forti;
		_pos set [2,0];
		private _type = typeof _forti;
		detach _forti;
		deletevehicle _forti;
		[_caller,_type,_pos,_dir] call clv_fnc_fob_contruccion;
	},
	nil,		// arguments
	100,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"leanLeft",			// shortcut
	"[_this] call clv_fnc_canbuild", 	// condition
	1,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
//addaction de cancelar
_cancelar = player addAction
[
	"<t color='#FF0000'>Cancelar</t>",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		_forti = forti;
		detach _forti;
		deletevehicle _forti;
	},
	nil,		// arguments
	0,		// priority
	false,		// showWindow
	true,		// hideOnUse
	"LeanRight",			// shortcut
	"[_this] call clv_fnc_canbuild", 	// condition
	1,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
_rotacion = (findDisplay 46) displayAddEventHandler ["MouseZchanged", "[_this select 1,forti] call clv_fnc_rotarobjeto"];
//bounding box
_bb = (2 boundingBox _forti) #1 #2;

while {(attachedto _forti) isnotequalto objNull} do {
	_forti = forti;
	_pos = (getpos player) getpos [10,getdir player];
	if !([_forti] call clv_fnc_fob_canbuild ) then {
		detach _forti;
		deletevehicle _forti;
		hint "Te saliste del area de construccion";
		break
	};
	_posasl = atltoasl _pos;
	_vectorup = surfaceNormal _pos;
	_relativeZ = ((_posasl #2)+_bb) - (getposasl player #2);
	_forti attachto [player,[0,10,_relativeZ]];
	_forti setvectorup (surfaceNormal (getpos _forti));
	sleep 0.1;
};

//borramos el addaction de antes
(findDisplay 46) displayremoveEventHandler ["MouseZchanged",_rotacion];
//findDisplay 46 displayRemoveEventHandler ["keyDown",_rotacion];
player removeAction _ubicar;
player removeAction _cancelar;
