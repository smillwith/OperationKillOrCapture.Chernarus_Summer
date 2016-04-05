// Revised: Dingus 2016
// Original: MulleDK19 © 2014
// Allows holstering of weapons on player units. Works in multiplayer.
// Usage: UNIT execVM "EnableWeaponHolsteringRevised.sqf";
// Eg. player execVM "EnableWeaponHolsteringRevised.sqf";

if (!isPlayer _this) exitWith
{
    // Action makes no sense on AI units.
};

//[_this, "Put away Binoculars", { _this select 1 action ["SwitchWeapon", _this select 1, _this select 1, 100]; }, true];
//Condition: currentWeapon == "Binocular";
//player0 addAction ["Put away Binoculars", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, true, true, "", "currentWeapon player0 == binocular player0"];
player0 addAction ["Put away Binoculars", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && currentWeapon _target == binocular _target"];

//Action: "Holster Weapon" - you have a weapon and you have that weapon selected
//Condition: currentWeapon == primaryWeapon && vehicle player0 == player0
//--OR currentWeapon player0 == primaryWeapon vehicle player0
player0 addAction ["Holster Weapon", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && primaryWeapon _target != """" && currentWeapon _target == primaryWeapon vehicle _target"];

//Action: "Weapon XXX"
//Condition: vehicle player0 == player0 && currentWeapon = '' && primaryWeapon != ''
_weaponName = getText (configFile >> "CfgWeapons" >> (primaryWeapon _this) >> "displayName");
_weaponAction = "Weapon " + _weaponName;
player0 addAction [_weaponAction, {_unit = _this select 1; _unit selectWeapon primaryWeapon _unit;}, [], 1.5, false, true, "", "_this == _target && vehicle _target == _target && currentWeapon _target == """" && primaryWeapon _target != """""];

true;