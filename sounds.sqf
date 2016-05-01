//nul = [player0] call dingus_fnc_soundtest;
dingus_fnc_soundtest = {
  params ["_sourceObject"];
  //player0 globalChat format ["%1", _sourceObject];
  _root = parsingNamespace getVariable "MISSION_ROOT";
  //player0 globalChat _root;
  _soundToPlay = _root + "sound\beast1.ogg";
  playSound3D [_soundToPlay, _sourceObject];
};

dingus_fnc_soundbeast1 = {
  params ["_sourceObject"];
  _root = parsingNamespace getVariable "MISSION_ROOT";
  _soundToPlay = _root + "sound\beast1.ogg";
  playSound3D [_soundToPlay, _sourceObject];
};

dingus_fnc_soundbeast2 = {
  params ["_sourceObject"];
  _root = parsingNamespace getVariable "MISSION_ROOT";
  _soundToPlay = _root + "sound\beast1.ogg";
  playSound3D [_soundToPlay, _sourceObject];
};

dingus_fnc_soundbeast3 = {
  params ["_sourceObject"];
  _root = parsingNamespace getVariable "MISSION_ROOT";
  _soundToPlay = _root + "sound\beast1.ogg";
  playSound3D [_soundToPlay, _sourceObject];
};