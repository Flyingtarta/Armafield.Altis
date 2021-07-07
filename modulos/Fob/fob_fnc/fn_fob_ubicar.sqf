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
nosepuede = false;
//_forti attachto [player,[0,_rbb,0]];

_rotacion = (findDisplay 46) displayAddEventHandler ["MouseZchanged", "[_this select 1,forti] call clv_fnc_fob_rotarobjeto"];

_keydown = findDisplay 46 displayAddEventHandler ["KeyDown", {
	params ["_displayorcontrol", "_key", "_shift", "_ctrl", "_alt"];

	if (_key isequalto 57 && [player] call clv_fnc_fob_canbuild && !(nosepuede)) then {
		private _forti = forti;
		private _dir = getdir _forti;
		private _pos = getpos _forti;
		_pos set [2,-((boundingBox _forti) #2)];
		private _type = typeof _forti;
		//detach _forti;
		deletevehicle _forti;
		ubicando = false;
		[player,_type,_pos,_dir] spawn clv_fnc_fob_contruccion;
	}else{
		cutText ["No se puede ubicar en este lugar","PLAIN",1];
	};

	if (_key isequalto 14) then {
		_forti = forti;
		ubicando = false;
		deletevehicle _forti;
		_costo = materiales_consumidos;
		_costo = _costo apply {_x*(-1)}; // lo hacemos positivo
		_costo call clv_fnc_TM_deltaMateriales; //devolvemos los materiales
	};

}];

cutText ["[ESPACIO] para ubicar | [Borrar] para sacar","PLAIN",-1];

_pos_anterior = (getpos player) getpos [_rbb,getdir player];
ubicando = True;
inGameUISetEventHandler ["PrevAction", "true"];
inGameUISetEventHandler ["NextAction", "true"];
inGameUISetEventHandler ["Action", "true"];

while {ubicando} do {
	_vectorup = surfaceNormal _pos;
	_angulo = atan((getCameraViewDirection player#2)*-1);
	_dis = (1.8/tan(_angulo));
	if (_dis < 0) then {_dis = _rbb};
	if (_dis > _rbb) then { _dis = _rbb};
	_pos = player getpos [_dis,getdir player];
	if !([player] call clv_fnc_fob_canbuild ) then { //si esta en un lugar que no llegan los recursos
		if (isnil "materiales_consumidos") exitwith {systemchat " TartaError | materiales_consumidos no existe"};
		_costo = materiales_consumidos;
		_costo = _costo apply {_x*(-1)}; // lo hacemos positivo
		_costo call clv_fnc_TM_deltaMateriales; //devolvemos los materiales
		deletevehicle _forti;
		_cancelado = true;
		ubicando = false;
	};
	_forti setpos _pos;
	_normal = surfaceNormal (getpos _forti);
	_forti setvectorup (surfaceNormal (getpos _forti));
	if (_normal #2 < 0.8 ) then {
			nosepuede = true;
			forti setObjectTexture [0,"#(rgb,8,8,3)color(1,0,0,0)"];
		}else{
			_forti setObjectTexture [0,""];
			nosepuede = false;
	};
	sleep 0.1;
};

cutText ["","PLAIN",-1];

//borramos el addaction de antes
(findDisplay 46) displayremoveEventHandler ["MouseZchanged",_rotacion];
//(findDisplay 46) displayremoveEventHandler ["KeyDown",_keydown];
findDisplay 46 displayRemoveEventHandler ["keyDown",_keydown];
inGameUISetEventHandler ["PrevAction", "false"];
inGameUISetEventHandler ["NextAction", "false"];
inGameUISetEventHandler ["Action", "false"];

/*
player removeAction _ubicar;
player removeAction _cancelar;
