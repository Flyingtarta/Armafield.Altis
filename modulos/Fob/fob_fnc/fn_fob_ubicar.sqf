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

//_modelo = "Land_HBarrierTower_F";//"Land_BagBunker_Tower_F";

params["_modelo"];//,"_distancia"];
private _pos = getpos player getpos [getdir player,5];
forti = _modelo createVehiclelocal _pos; // lo creamos "global" al jugador
private _forti = forti;
private _bb = (2 boundingBox _forti) #1 #2;
private _rbb = ((2 boundingbox _forti) # 2) * 3;
_forti attachto [player,[0,_rbb,0]];


_rotacion = (findDisplay 46) displayAddEventHandler ["MouseZchanged", "[_this select 1,forti] call clv_fnc_fob_rotarobjeto"];
_keydown = findDisplay 46 displayAddEventHandler ["KeyDown", {
	params ["_displayorcontrol", "_key", "_shift", "_ctrl", "_alt"];

	if (_key isequalto 57 && [player] call clv_fnc_fob_canbuild) then {
		private _forti = forti;
		private _dir = getdir _forti;
		private _pos = getpos _forti;
		_pos set [2,-((boundingBox _forti) #2)];
		private _type = typeof _forti;
		detach _forti;
		deletevehicle _forti;
		[player,_type,_pos,_dir] spawn clv_fnc_fob_contruccion;
	};

	if (_key isequalto 14) then {
		_forti = forti;
		detach _forti;
		deletevehicle _forti;
	};

}];

cutText ["[ESPACIO] para ubicar | [Borrar] para sacar","PLAIN",-1];

while {(attachedto _forti) isnotequalto objNull} do {

	_forti = forti;
	_pos = (getpos player) getpos [_rbb,getdir player];
	if !([_forti] call clv_fnc_fob_canbuild ) then {
		detach _forti;
		deletevehicle _forti;
		cutText ["Te saliste del area de construccion","PLAIN",-1];
		//Devolvemos los materiales
		if (isnil "materiales_consumidos") exitwith {systemchat " TartaError | materiales_consumidos no existe"};
		_costo = materiales_consumidos;
		_costo = _costo apply {_x*(-1)}; // lo hacemos positivo
		_costo call clv_fnc_TM_deltaMateriales; //devolvemos los materiales
		break
	};
	_posasl = atltoasl _pos;
	_vectorup = surfaceNormal _pos;
	_relativeZ = ((_posasl #2)+_bb) - (getposasl player #2);
	_angulo = atan((getCameraViewDirection player#2)*-1);
	_dis = (1.8/tan(_angulo));
	if (_dis < 0) then {_dis = _rbb};
	if (_dis > _rbb) then { _dis = _rbb};
	_forti attachto [player,[0,_dis,_relativeZ]];
	_forti setvectorup (surfaceNormal (getpos _forti));
	sleep 0.1;
};
cutText ["","PLAIN",-1];

//borramos el addaction de antes
(findDisplay 46) displayremoveEventHandler ["MouseZchanged",_rotacion];
//(findDisplay 46) displayremoveEventHandler ["KeyDown",_keydown];
findDisplay 46 displayRemoveEventHandler ["keyDown",_keydown];

/*
player removeAction _ubicar;
player removeAction _cancelar;
