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
_fob = createVehicle [_type,_pos,[],0,"CAN_COLLIDE"];
_fob setdir _dir;
_fob setvectorup (surfaceNormal (getpos _fob));
_caller action ["SwitchWeapon", player, player, 100];

[_caller,"AinvPknlMstpSnonWnonDnon_medic_1"]remoteexec ["playmovenow",0];

for "_i" from 0 to 100 do {
	if (_i % 5 isequalto 0) then { //reinicia la animacion
		[_caller,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteexec ["playmovenow",0];
	};
	_pos = _pos vectoradd [0,0,(5/110)];
	_fob setpos _pos;
	sleep (20/100);
};

[_caller,"Terminate"]remoteexec ["playmovenow",0];

_fob
