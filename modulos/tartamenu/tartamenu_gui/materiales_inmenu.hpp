
/*
Materiales para poner en el menu
*/

class materiales_inmenu {

	idd= 3333;

  controls[]={
    muni_img,
    mate_img,
    muni,
    mate,
    muni_cost,
    mate_cost
  };

  class muni_img: RscPicture
  {
  	idc = 3201;
  	text = "modulos\tartamenu\tartamenu_img\ico\municion.paa";
  	x = 0.45875 * safezoneW + safezoneX;
  	y = 0.467 * safezoneH + safezoneY;
  	w = 0.0257812 * safezoneW;
  	h = 0.044 * safezoneH;
  };
  class mate_img: RscPicture
  {
  	idc = 3202;
  	text = "modulos\tartamenu\tartamenu_img\ico\materiales.paa";
  	x = 0.505156 * safezoneW + safezoneX;
  	y = 0.467 * safezoneH + safezoneY;
  	w = 0.0257812 * safezoneW;
  	h = 0.044 * safezoneH;
  };
  class muni: RscText
  {
    idc = 3000;
    text = ""; //--- ToDo: Localize;
    x = 0.45875 * safezoneW + safezoneX;
    y = 0.511 * safezoneH + safezoneY;
    w = 0.0257812 * safezoneW;
    h = 0.033 * safezoneH;
    	colorText[] = {1,1,1,1};
  };
	class mate: RscText
	{
		idc = 3001;
		text = ""; //--- ToDo: Localize;
		x = 0.505156 * safezoneW + safezoneX;
		y = 0.511 * safezoneH + safezoneY;
		w = 0.0257812 * safezoneW;
		h = 0.033 * safezoneH;
		colorText[] = {1,1,1,1};
	};
	class muni_cost: RscText
	{
		idc = 3002;
		text = ""; //--- ToDo: Localize;
		x = 0.505156 * safezoneW + safezoneX;
		y = 0.434 * safezoneH + safezoneY;
		w = 0.0257812 * safezoneW;
		h = 0.033 * safezoneH;
    colorText[] = {1,1,1,1};
	};

  class mate_cost: RscText
  {
  	idc = 3003;
  	text = ""; //--- ToDo: Localize;
  	x = 0.45875 * safezoneW + safezoneX;
  	y = 0.434 * safezoneH + safezoneY;
  	w = 0.0257812 * safezoneW;
  	h = 0.033 * safezoneH;
    colorText[] = {1,1,1,1};
  };


};
