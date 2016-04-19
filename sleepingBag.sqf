//Deploy Sleeping Bag
_pos = screenToWorld [ 0.5, 0.5 ];
_cutter = createVehicle [ "Land_ClutterCutter_Medium_F", _pos, [], 0, "NONE" ];
_SleepBag = createVehicle [ "Land_Sleeping_bag_brown_F", _pos, [], 0, "NONE" ];
_SleepBag attachTo [_cutter, [0,0,0.05]];
player removeItem "sc_bedroll";


_SleepBag addAction ["Sleep for 8 hours", {
  //His way
  _date = date; _date set [3, (_date select 3) + 8]; setDate _date;

  //My way
  //skipTime 8;
}, [], 0, false, true, "", ""];

_SleepBag addAction [ "Pack the sleeping bag",{ 
    _Bag = _this select 3 select 0;
    _cut = _this select 3 select 1;

    deleteVehicle _Bag; 
    deleteVehicle _cut;

    player addItem 'sc_bedroll'; 
}, [ _SleepBag, _cutter ], 0, false, true, "", ""];
