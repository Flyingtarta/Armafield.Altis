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

_pos = _pos vectoradd [0,0,-5];
_forti = createVehicle [_type,_pos,[],0,"CAN_COLLIDE"];
_forti setdir _dir;
_forti setvectorup (surfaceNormal (getpos _forti));
_caller action ["SwitchWeapon", player, player, 100];

[_caller,"AinvPknlMstpSnonWnonDnon_medic_1"]remoteexec ["playmovenow",0];

contruyendo = true;

//addaction para cancelar
_cancelar = player addAction
[
	"<t color='#FF0000'>Cancelar</t>",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		contruyendo = false;
	},
	nil,		// arguments
	0,		// priority
	false,		// showWindow
	false,		// hideOnUse
	"LeanRight",			// shortcut
	"contruyendo", 	// condition
	1,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];

private _cancelado = false;
for "_i" from 0 to 100 do {
	if !(contruyendo) then {
		deletevehicle _forti;
		_cancelado = true;
		break
	};
	if (_i % 5 isequalto 0) then { //reinicia la animacion
		[_caller,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteexec ["playmovenow",0];
	};
	_pos = _pos vectoradd [0,0,(5/110)];
	_forti setpos _pos;
	sleep (20/100);
};

player removeaction _cancelar;
[_caller,"Terminate"] remoteexec ["playmovenow",0];
//deberia ser remote exec al server <-------------------------------------------
if !(_cancelado) then {
	[_forti] call clv_fnc_init_fob;
};

_forti
