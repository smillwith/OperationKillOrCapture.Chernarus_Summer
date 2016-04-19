/*
  File: taskPatrol.sqf
  Author: Joris-Jan van 't Land
  Fixed by: Dingus
  Description:
  Create a random patrol of several waypoints based on a set of marker names

  Parameter(s):
  _this select 0: the group to which to assign the waypoints (Group)
  _this select 1: the position of the group to start with
 
  Returns:
  Boolean - success flag
*/

//Validate parameter count
if ((count _this) < 2) exitWith {debugLog "Log: [taskPatrolRevised] Function requires at least 2 parameters!"; false};

private ["_grp", "_pos", "_markers", "_limit", "_start"];
_grp = _this select 0;
_pos = _this select 1;
_limit = 10;
_start = count waypoints _grp;

//Validate parameters
if ((typeName _grp) != (typeName grpNull)) exitWith {debugLog "Log: [taskPatrol] Group (0) must be a Group!"; false};

//Dingus
_grp setBehaviour "SAFE";

_markers = ["markerRoute01", "markerRoute02", "markerRoute03", "markerRoute04", "markerRoute05", "markerRoute06", "markerRoute07", "markerRoute08"];

//Pick random markers to go to
for "_i" from _start to _limit do
{
  private ["_wp", "_newPos"];
  _newPos = getMarkerPos (_markers select floor random count _markers);
  //player globalChat format ["%1", _newPos];
  _wp = _grp addWaypoint [_newPos, _i];
  _wp setWaypointType "MOVE";
  _wp setWaypointCompletionRadius 5;

  //Set the group's speed and formation at the first waypoint.
  if (_i == 0) then
  {
    //_wp setWaypointSpeed "LIMITED";
    //_wp setWaypointFormation "STAG COLUMN";
  };
};

//Cycle back to the first position.
private ["_wp"];
_wp = _grp addWaypoint [_pos, _limit + 1];
_wp setWaypointType "CYCLE";
_wp setWaypointCompletionRadius 5;

true;
