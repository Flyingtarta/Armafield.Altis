/*
	Descripcion:
    Revisa la cantidad de materiales y municion disponibles en un radio de 25 metros de cajas y camiones
    devouelve la suma de ambos valores

	Author:
		[calaveras] FlyingTarta

	Fecha:
		23/6/2021

	Falta:
		- Que detecte cajas de municion que baja del camion

	Input:
		0: (object) objeto

	Return:
		[ARRAY]
      1: municion (number)
      2: materiales   (number)

*/

private _unit = _this select 0;

private _mate = 0;
private _muni = 0;

private _camiones = (getpos _unit) nearEntities ["LandVehicle",25];
//private _camiones = (getpos _unit) nearEntities ["Truck_F",25];               falta detectar cajas


_containers = _camiones select {
  alive _x &&
  (
     (_x getvariable ["materiales",0] > 0) ||
     (_x getVariable ["municion",0] > 0)
  )
};

{
  _mate = _mate + (_x getvariable ["materiales",0]);
  _muni = _muni + (_x getvariable ["municion",0]  );
}foreach _containers;

[_muni,_mate]
