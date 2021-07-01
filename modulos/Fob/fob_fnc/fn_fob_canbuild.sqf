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


if ([_unit] call clv_fnc_fob_recursosDisp isnotequalto [0,0]) then {
	true
}else{
	false
}
/*
private _camiones = (getpos _unit) nearEntities ["LandVehicle",25];
if ( (_camiones findif {alive _x && (_x getvariable ["materiales",0] > 0)} ) isnotequalto -1) then {
	true
}else{
	false
};
