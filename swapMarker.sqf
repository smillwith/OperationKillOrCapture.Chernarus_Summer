//["mHuntingShack"] call dingus_fnc_SwapMarker;
dingus_fnc_SwapMarker = {
  params ["_markerName"];

  _color = "ColorGreen";
  _text = markerText _markerName;
  _pos = getMarkerPos _markerName;

  //Create new
  _marker = createMarker [format ["%1_done", _markerName], _pos];
  _marker setMarkerType "mil_circle";
  _marker setMarkerColor _color;
  _marker setMarkerText _text;

  //Delete old
  deleteMarker _markerName;

  _marker;
};

//["mHuntingShack"] call dingus_fnc_ShowMarker;
//["mHuntingShack_start"] call dingus_fnc_SwapMarker;

