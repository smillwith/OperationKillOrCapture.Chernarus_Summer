execVM "loot.sqf";
execVM "actionHelper.sqf";
execVM "showMarker.sqf";
execVM "swapMarker.sqf";
execVM "sounds.sqf";

//Create diary records
execVM "diary.sqf";

//Initialize the Dialogue
execVM "questDialogue.sqf";

//Endgame
execVM "endGame.sqf";

//Defaults?
missionNamespace setVariable ["interview0", '0'];
missionNamespace setVariable ["interview1", '0'];
missionNamespace setVariable ["interview2", '0'];
missionNamespace setVariable ["interview3", '0'];
missionNamespace setVariable ["interview4", '0'];
missionNamespace setVariable ["interview5", '0'];
missionNamespace setVariable ["interview6", '0'];
missionNamespace setVariable ["interview7", '0'];
missionNamespace setVariable ["interview8", '0'];
missionNamespace setVariable ["interview9", '0'];
missionNamespace setVariable ["campEmpty", '1'];
missionNamespace setVariable ["arrivedAtCamp", '0'];
missionNamespace setVariable ["campready", '0'];
missionNamespace setVariable ["reachedHuntingStand1", '0'];
missionNamespace setVariable ["daymode", '0'];
missionNamespace setVariable ["johanCompanion", '0'];
missionNamespace setVariable ["creatureLocated", '1'];

offroad1 setVariable ['domeLightOn', '0'];

//Other Quest-related stuff

//Initialize the truck
[ 
 offroad1, 
 ["guerilla_05",1],  
 ["HideBumper2",0,"HideBackpacks",0,"HideDoor3",1,"Proxy",0,"Destruct",0]
] call BIS_fnc_initVehicle; 


//Action: "Set up Camp"
player0 addAction ["<t color='#FEB100'>Set up Camp</t>", {
  missionNamespace setVariable ["campready", '1'];
  skipTime 0.75;
}, [], 1.5, true, true, "", "triggerActivated tArrivedAtCamp && (missionNamespace getVariable ['arrivedAtCamp', '0'] == '1') && (missionNamespace getVariable ['campready', '0'] == '0') && vehicle player0 == player0"];


//player0 addAction ["Deploy sleeping bag", {_bag = createVehicle B_respawn_sleeping_bag_brown_f; _bag addAction []; }, [], 1.5, false, true, "", ""];
//Doesn't work since you don't have that item
//player0 addAction ["Unpack sleeping bag", "sleepingBag.sqf", nil, 6, false, true, "", "_this == _target AND 'sc_bedroll' in (items _this)"];


//offroad1 setVariable ["domeLightOn", '0', '0'];
offroad1 addAction ["Domelight Off", {
  deleteVehicle domelight;
  offroad1 setVariable ["domeLightOn", '0'];
}, [], 1.5, false, true, "", "(_target getVariable ['domeLightOn', '0'] == '1') && (alive(_target)) && (driver _target == _this) && (vehicle _this == _target)"];

offroad1 addAction ["Domelight On", {
  domelight = "#lightpoint" createVehicleLocal getPos offroad1; domelight attachTo [offroad1, [0, 0.1, 0.7]];
  domelight setLightBrightness 0.05; domelight setLightAmbient [1, 0.9, 0.8]; domelight setLightColor [1, 0.9, 0.8]; domelight setLightFlareMaxDistance 300;
  offroad1 setVariable ['domeLightOn', '1'];
}, [], 1.5, false, true, "", "(_target getVariable ['domeLightOn', '0'] == '0') && (driver _target == _this) && (vehicle _this == _target)"];


//_target getVariable ['domeLightOn', '0'] == '0' AND alive(_target) AND driver _target == _this AND vehicle _this == _target
//offroad1 getVariable ['domeLightOn', '0'] == '0' AND alive(offroad1) AND driver offroad1 == player AND vehicle player == offroad1

//Action: Medic!!
medic1 addAction ["<t color='#F00000'>I'm hurt. Patch me up, doc.</t>", {
  _this select 0 action ["HealSoldier", _this select 1];
}, [], 1.5, true, true, "", "damage _this > 0.0"];

medic1 addAction ["<t color='#FFFFFF'>Who are you?</t>", {
  call dingus_fnc_MedicIntro;
}, [], 1.5, true, true, "", ""];

//Repair my vehicle?
engineer1 addAction ["<t color='#F00000'>Can you repair my vehicle?</t>", {
  _this select 0 action ["repairVehicle", vehicle _this select 1];
}, [], 1.5, true, true, "", "(vehicle _this) != _this && damage (vehicle _this) > 0.0"];

engineer1 addAction ["<t color='#FFFFFF'>Who are you?</t>", {
  call dingus_fnc_EngineerIntro;
}, [], 1.5, true, true, "", ""];

//TODO: Refuel?


//Sit Init
MAC_fnc_switchMove = {
  private["_object","_anim"];
  _object = _this select 0;
  _anim = _this select 1;

  _object switchMove _anim;
};
