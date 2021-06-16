/*
	Descripcion:
		Rota objeto atacheado

	Author:
		[calaveras ] FlyingTarta

	Fecha:
		6/6/2021

	Input:
		0: (number) input > 0: gira derecha < 0 izquierda
		1: (objeto) objeto a rotar

	Return:
		bool
*/
private _tecla = _this select 0;
private _objeto = _this select 1;

if (_tecla > 0) then {
	_objeto setdir ((getdir _objeto) + 0.001);
	//systemchat str [getdir _objeto,(getdir _objeto) + 0.001];
}else{
	_objeto setdir ((getdir _objeto) - 0.001);
	//systemchat str [getdir _objeto,(getdir _objeto) - 0.001];
};
//gira siempre para el miosmo lado...
//resulta un tanto util ya que tiene que usar addaction para sacarlo o ponerlo
