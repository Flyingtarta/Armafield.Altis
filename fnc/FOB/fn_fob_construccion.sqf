
/*
	Descripcion:

	Author:
		[calaveras ] FlyingTarta

	Fecha:
		3/6/2021

	Input:
		0: (object) Objeto que sirve como FOB

	Return:
		objeto : objeto creado
*/
_duracion = 20;
params ["_type","_pos","_dir","_duracion"]

_pos = _pos vectoradd [0,0,-10];
_fob = createVehicle [_type,_pos,[],0,"CAN_COLLIDE"];
_fob setdir _dir;
_fob setvectorup (surfaceNormal (getpos _fob));

for "_i" from 0 to 100 do {
	_pos = _pos vectoradd [0,0,(10/100)];
	_fob setpos _pos;
	sleep (20/100);
};

_fob
