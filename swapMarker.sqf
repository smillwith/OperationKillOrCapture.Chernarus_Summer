dingus_fnc_SwapMarker = {
  params ["_markerName"];

  //Get Color
  //_color = getMarkerColor _markerName;
  _color = "Green";

  //Get text
  _text = getMarkerText _markerName;
  
  //Get pos
  _pos = getMarkerPos _markerName;

  //Create new
  _marker = createMarker [format ["%1_done", _markerName], _pos];
  _marker setMarkerType "mil_circle";
  _marker setMarkerColor _color;
  _marker setMarkerText _text;

  //Delete old
  deleteMarker _markerName;
  
};