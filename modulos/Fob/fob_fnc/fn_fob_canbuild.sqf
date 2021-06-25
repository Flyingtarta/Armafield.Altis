/*
	Descripcion:
		devuelve si se puede construir un fob o no
	author:
		flyingtarta
	fecha:
		3/6/2021
	input:
		0 : (objeto) Unidad
	return:
		bool

*/

params ["_unit"];

//if !(_unit getvariable ["ingeniero",true]) exitwith {false}; //si no es ingeniero sale

private _camiones = (getpos _unit) nearEntities ["Truck_F",25];
if ( (_camiones findif {alive _x && (_x getvariable ["materiales",0] > 999)} ) isnotequalto -1) then {
	true
}else{
	false
};
