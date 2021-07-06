/*
  clv_fnv_TM_deltaMateriales

  Descripcion:
    Funcion para decontar los materiales

  input:
    [0] = number municion   ( negativo si desea descontar )
    [1] = number materiales ( negativo  si desea descontar )

  output:
    bool (exito)
*/
params ["_muni","_mate"];

private _fuentes = (getpos player) nearEntities ["LandVehicle",25]; //hacer que verifique FOBs y Cajas
//Seleccionamos la fuente que tenga los materiales suficientes
private _fuente = _fuentes select {
    _x getvariable ["municion",0] >= _muni &&
    _x getvariable ["materiales",0] >= _mate
};
if (_fuente isnotequalto []) then {
    _fuente = _fuente #0; // seleccionamos la primera
    //descontamos los materiales y municion a la fuente
    _MuniFinal = (_fuente getvariable "municion") - _muni;
    _MateFinal = (_fuente getvariable "materiales") - _mate;
    //lo ejecutamos efectuamos el cambio por medio del servidor
    [_fuente,["municion",_MuniFinal,true] ] remoteexec ["setvariable",2];
    [_fuente,["materiales",_MateFinal,true] ] remoteexec ["setvariable",2];
    true
}else{
    false
}
