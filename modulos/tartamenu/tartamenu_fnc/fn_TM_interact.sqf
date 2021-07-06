/*
	Descripcion:
    Al apretar  un boton se abre menu de interaccion si esta apuntando un objeto , sino abre uno de interaccion propia (?)

	Author:
		[calaveras] FlyingTarta

	Fecha:
		5/7/2021

	Falta:
		-

	Input:
		0: (object) objeto que apunta

	Return:
		None
*/

//definimos distancia de interaccion
#define DISTANCIA_INTERACCION 10

params ["_objeto","","_distancia"];

if(_distancia > DISTANCIA_INTERACCION && !(construyendo)) exitwith {}; //si el objeto no esta muy lejos y no se encuentra construyendo

if !(isnull _objeto) then {//si le esta apuntando a algo
  hint str ["Interactuando con ", _objeto];

};//cable pelado para self.intecract
