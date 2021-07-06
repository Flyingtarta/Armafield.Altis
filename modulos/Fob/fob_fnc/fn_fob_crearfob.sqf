/*
	Descripcion:

    - Agrega el respawn al equipo correspondiente
    - Agrega las Handlers de materiales
    - Crea marcador
    - Verficia que se pueda construir
    - llama a FOBINIT

	Author:
		[calaveras ] FlyingTarta

	Fecha:
		5/7/2021

	Input:
		0:


	Return:

*/
#define modeloFOB "Land_BagBunker_01_large_green_F"
#define COSTO [1000,1000]

private _deltaMateriales = COSTO call clv_fnc_TM_deltaMateriales;

//if !([getpos player,side player] call clv_fnc_fob_canfob ) exitwith {hint "NO SE PUEDE CONSTRUIR UN FOB" };
private _fob = objnull;

if (_deltamateriales) then {
  materiales_consumidos = COSTO; //cosnumo de materiales
  [modeloFOB] call clv_fnc_fob_ubicar;
  sleep 1;
  waituntil {!(construyendo) && !(isnil "fortiTerminada")};
  _fob = fortiTerminada;
  systemchat str (fortiTerminada);
  if !(isnull _fob) then {
    [] spawn {
      fortiTerminada call clv_fnc_fob_init;
    };
  };
}else{
   if (true) exitwith {hint "no hay suficiente materiales"}
};

if (isnil "_fob") exitwith {};


_pos = getpos _fob;
(getpos player) apply {str(round (_x/100))} select [0,2] params ["_h","_v"];
if (count(_h) isequalto 2) then {_h = str(composeText ["0",_h])};
if (count(_v) isequalto 2) then {_v = str(composeText ["0",_v])};
_grid = str(composeText [_v," ",_h]);

[[side player,_pos,_grid],{
  _respawn = _this call BIS_fnc_addRespawnPosition;
  //GlobalRespawn append [_respawn];
  //publicVariable "GlobalRespawn";
}] remoteexec ["call",2];
