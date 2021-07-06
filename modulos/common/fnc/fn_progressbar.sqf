/*
	Descripcion:


	Author:
		[calaveras] FlyingTarta

	Fecha:
		23/6/2021

	Falta:
		-

	Input:
    0 : (number) numeros de segundos de la barra

	Return:
   true
*/

params[["_counter",20]];

with uiNamespace do {
    my_awesome_progressBar = findDisplay 46 ctrlCreate ["RscProgress", -1];
    my_awesome_progressBar ctrlSetPosition [0.29375 * safezoneW + safezoneX,0.753 * safezoneH + safezoneY,0.4125 * safezoneW,0.022 * safezoneH];
    my_awesome_progressBar progressSetPosition 1;
    my_awesome_progressBar ctrlCommit 0;
};

for "_i" from 1 to (_counter*10) do {
    (uiNamespace getVariable "my_awesome_progressBar") progressSetPosition (1-_i/_counter);
    sleep 1;
};

ctrlDelete (uiNamespace getVariable "my_awesome_progressBar");
