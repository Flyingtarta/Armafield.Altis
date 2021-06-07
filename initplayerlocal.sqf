contruyendo = false;
player addAction
[
	"Construir FOB",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		[] call clv_fnc_fob_ubicar;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"[_this] call clv_fnc_canbuild && attachedObjects _this isequalto []", 	// condition
	50,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
