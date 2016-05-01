//["mHuntingShack"] call dingus_fnc_ShowMarker;
dingus_fnc_ShowMarker = {
  params ["_markerName"];

  _color = "Default";
  _text = markerText _markerName;
  _pos = getMarkerPos _markerName;

  //Create new
  _marker = createMarker [format ["%1_start", _markerName], _pos];
  _marker setMarkerType "mil_unknown";
  _marker setMarkerColor _color;
  _marker setMarkerText _text;

  _marker;
};
