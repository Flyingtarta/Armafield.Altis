/*
	Descripcion:

	Author:
		[calaveras ] FlyingTarta

	Fecha:
		3/6/2021

	Falta:
		- Forma de cancelar

	Input:
		0: (object) Unidad - a la cual ponerle la animacion de construccion
		1: (str)    Nombre de clase del objeto a crear
		2: (array)  Array de posicion
		3: (number) direccion (0 a 360)
		4: (number) tiempo de demora de contruccion

	Return:
		objeto : objeto creado
*/

_duracion = 20;

params ["_caller","_type","_pos","_dir","_duracion"];

private _forti = createVehicle [_type,_pos,[],0,"CAN_COLLIDE"];
private _bb = (2 boundingBox _forti);
_forti setdir _dir;
_forti setvectorup (surfaceNormal (getpos _forti));
_caller action ["SwitchWeapon", player, player, 100];

[_caller,"AinvPknlMstpSnonWnonDnon_medic_1"]remoteexec ["playmovenow",0];

construyendo = true;

//addaction para cancelar
_cancelar = player addAction
[
	"<t color='#FF0000'>Cancelar</t>",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		construyendo = false;
		//devolvemos los materiales
		if (isnil "materiales_consumidos") exitwith {systemchat " TartaError | materiales_consumidos no existe"};
		_costo = materiales_consumidos;
		_costo = _costo apply {_x*(-1)}; // lo hacemos positivo
		_costo call clv_fnc_TM_deltaMateriales; //devolvemos los materiales
	},
	nil,		// arguments
	0,		// priority
	false,		// showWindow
	false,		// hideOnUse
	"LeanRight",			// shortcut
	"construyendo", 	// condition
	1,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

private _cancelado = false;

//if (_type isequalto "Land_HBarrierTower_F") then {_max = 100};
_forti enableSimulation false;
for "_i" from 0 to 100 do {
	if !(construyendo) then {
		deletevehicle _forti;
		_cancelado = true;
		break
	};
	if (_i % 5 isequalto 0) then { //reinicia la animacion
		[_caller,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteexec ["playmovenow",0];
	};
	_pos = _pos vectoradd [0,0,(_bb#2)/100];
	_forti setpos _pos;
	sleep (20/100);
};
_forti enableSimulation true;
player removeaction _cancelar;
[_caller,"Terminate"] remoteexec ["playmovenow",0];

//deberia ser remote exec al server solo si es un FOB<-------------------------------------------
/*if !(_cancelado) then {
	[_forti] call clv_fnc_init_fob;
};
*/
_forti
