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
_this addAction ["Put away Binoculars", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && currentWeapon _target == binocular _target"];

//Condition: i'm not in a vehicle, i'm not currently holding my binoculars and I have binoculars
_this addAction ["Equip Binoculars", {_unit = _this select 1; _unit selectWeapon binocular _unit;}, [], 1.5, false, true, "", "_this == _target && vehicle _target == _target && currentWeapon _target != binocular _target && binocular _target != """""];

//Action: "Holster Weapon" - you have a weapon and you have that weapon selected
//Condition: currentWeapon == primaryWeapon && vehicle player0 == player0
//--OR currentWeapon player0 == primaryWeapon vehicle player0
_this addAction ["Holster Weapon", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && primaryWeapon _target != """" && currentWeapon _target == primaryWeapon vehicle _target"];

//Action: "holster (secondary) Weapon" - I'm high - haven't tested yet
//player0 addAction ["Holster Weapon", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && secondaryWeapon _target != """" && currentWeapon _target == secondaryWeapon vehicle _target"];

//Action: "holster (handgun) Weapon" - I'm high
_this addAction ["Holster Weapon", {_unit = _this select 1; _unit action ["SwitchWeapon", _unit, _unit, 100];}, [], 1.5, false, true, "", "_this == _target && handgunWeapon _target != """" && currentWeapon _target == handgunWeapon _target"];


//Action: "Weapon XXX"
//Condition: vehicle player0 == player0 && currentWeapon = '' && primaryWeapon != ''
//Notes: Only I can perform this action (people can't walk up to me and switch my weapon and vice versa)
//When I'm not in a vehicle (I'm my own vehicle)
//When I have no weapon equipped
//But I do have a weapon on me
//(not yet) But when I'm holding binoculars, only show up for a weapon that is not a handgun (since handguns get added automatically for some reason)
_weaponName = getText (configFile >> "CfgWeapons" >> (primaryWeapon _this) >> "displayName");
_weaponAction = "Weapon " + _weaponName;
_this addAction [_weaponAction, {_unit = _this select 1; _unit selectWeapon primaryWeapon _unit;}, [], 1.5, false, true, "", "_this == _target && vehicle _target == _target && currentWeapon _target == """" && primaryWeapon _target != """""];

true;
