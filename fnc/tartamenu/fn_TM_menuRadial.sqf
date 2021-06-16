#define TARTAMENU 1314
//botones
#define BOTON0 1400
#define BOTON1 1401
#define BOTON2 1402
#define BOTON3 1403
#define BOTON4 1404
#define BOTON5 1405
#define BOTON6 1406
#define BOTON7 1407
#define BOTON8 1408
//imagenes
#define IMG0 1410
#define IMG1 1411
#define IMG2 1412
#define IMG3 1413
#define IMG4 1414
#define IMG5 1415
#define IMG6 1416
#define IMG7 1417
#define IMG8 1418

//params [];
//waitUntil { !isNull (findDisplay TARTAMENU) };
createDialog "TartaMenu";
waituntil { ! (isNull (findDisplay TARTAMENU))};
_handler = (findDisplay TARTAMENU) displayAddEventHandler ["onMouseButtonDown",{systemchat str _this;true}];
hint str _handler;

//ctrlSetText [idc, text]
