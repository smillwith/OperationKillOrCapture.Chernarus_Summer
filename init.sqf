execVM "loot.sqf";
execVM "actionHelper.sqf";

execVM "showMarker.sqf";
execVM "swapMarker.sqf";

//We actually want to do this later...after their initial weapon has been put away
//player0 execVM "EnableWeaponHolstering.sqf";
//player1 execVM "EnableWeaponHolstering.sqf";


//Create diary records
execVM "diary.sqf";

//Initialize the Dialogue
execVM "questDialogue.sqf";

//Endgame
execVM "endGame.sqf";

//Defaults?
missionNamespace setVariable ["interview1", false];
missionNamespace setVariable ["interview2", false];
missionNamespace setVariable ["interview3", false];
missionNamespace setVariable ["interview4", false];
missionNamespace setVariable ["interview5", false];
missionNamespace setVariable ["interview6", false];
missionNamespace setVariable ["interview7", false];
missionNamespace setVariable ["campready", false];


//Sit Init
MAC_fnc_switchMove = {
  private["_object","_anim"];
  _object = _this select 0;
  _anim = _this select 1;

  _object switchMove _anim;
    
};

