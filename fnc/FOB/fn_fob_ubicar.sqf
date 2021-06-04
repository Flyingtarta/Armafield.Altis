
_modelo = "Land_HBarrierTower_F";//"Land_BagBunker_Tower_F";
private _pos = getpos player getpos [getdir player,10];
Fob = _modelo createVehiclelocal _pos;
Fob attachto [player,[0,10,0]];


//addaction para ubicar el fob
_ubicar = player addAction
[
	"Ubicar FOB",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		private _fob = fob;
		private _dir = getdir _fob;
		private _pos = getpos _fob;
		_pos set [2,0];
		private _type = typeof _fob;
		detach _Fob;
		deletevehicle _Fob;


		/*
		_fob = createVehicle [_type,_pos,[],0,"CAN_COLLIDE"];
		_fob setdir _dir;
		_fob setvectorup (surfaceNormal (getpos _fob));
		*/
		[_caller,_type,_pos,_dir] call clv_fnc_fob_contruccion;
		[_fob] call clv_fnc_init_fob;

	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"[_this] call clv_fnc_canfob", 	// condition
	1,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

//addaction de cancelar
_cancelar = player addAction
[
	"cancelar",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		private _dir =

		detach Fob;
		deletevehicle Fob;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"[_this] call clv_fnc_canfob", 	// condition
	1,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

//bounding box
_bb = (2 boundingBox Fob) #1 #2;

while {(attachedto Fob) isnotequalto objNull} do {
	_fob = fob;
	_pos = (getpos player) getpos [10,getdir player];
	if !([_fob] call clv_fnc_canfob ) then {
		detach Fob;
		deletevehicle Fob;
		hint "Te saliste del area de construccion";
		break
	};
	_posasl = atltoasl _pos;
	_vectorup = surfaceNormal _pos;
	_relativeZ = ((_posasl #2)+_bb)- (getposasl player #2);
	//systemchat str [_relativeZ,getposasl player #2,((_posasl #2)+_bb)];
	_Fob attachto [player,[0,10,_relativeZ]];
	_fob setvectorup (surfaceNormal (getpos _fob));
	sleep 0.1;
};

//borramos el addaction de antes

player removeAction _ubicar;
player removeAction _cancelar;
