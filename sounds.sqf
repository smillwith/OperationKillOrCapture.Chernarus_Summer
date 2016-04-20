//nul = [player0] call dingus_fnc_soundtest;
dingus_fnc_soundtest = {
  params ["_sourceObject"];
  player0 globalChat format ["%1", _sourceObject];
  _root = parsingNamespace getVariable "MISSION_ROOT";
  player0 globalChat _root;
  _soundToPlay = _root + "sound\beast-growl.ogg";
  playSound3D [_soundToPlay, _sourceObject];
};