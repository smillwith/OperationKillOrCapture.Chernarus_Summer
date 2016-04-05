dingus_fnc_ShowMarker = {
  params ["_markerName"];

  _color = "Default";
  _text = getMarkerText _markerName;
  _pos = getMarkerPos _markerName;

  //Create new
  _marker = createMarker [format ["%1_new", _markerName], _pos];
  _marker setMarkerType "hd_unknown";
  _marker setMarkerColor _color;
  _marker setMarkerText _text;

  //Delete old
  deleteMarker _markerName;

};