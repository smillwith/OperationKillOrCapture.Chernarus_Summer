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
missionNamespace setVariable ["interview0", '0'];
missionNamespace setVariable ["interview1", '0'];
missionNamespace setVariable ["interview2", '0'];
missionNamespace setVariable ["interview3", '0'];
missionNamespace setVariable ["interview4", '0'];
missionNamespace setVariable ["interview5", '0'];
missionNamespace setVariable ["interview6", '0'];
missionNamespace setVariable ["interview7", '0'];
missionNamespace setVariable ["interview8", '0'];
missionNamespace setVariable ["campEmpty", '1'];
missionNamespace setVariable ["arrivedAtCamp", '0'];
missionNamespace setVariable ["campready", '0'];
missionNamespace setVariable ["reachedHuntingStand1", '0'];


//Other Quest-related stuff

//Action: "Set up Camp"
player0 addAction ["Set up Camp", {
  missionNamespace setVariable ["campready", '1'];
  skipTime 0.75;
}, [], 1.5, false, true, "", "triggerActivated tArrivedAtCamp && (missionNamespace getVariable ['campready', '0'] == '0')"];


//Action: Medic!!
medic1 addAction ["Heal me please.", {
  _this select 0 action ["HealSoldier", _this select 1];
}, [], 1.5, false, true, "", "damage _this > 0.0"];


//Sit Init
MAC_fnc_switchMove = {
  private["_object","_anim"];
  _object = _this select 0;
  _anim = _this select 1;

  _object switchMove _anim;
    
};

