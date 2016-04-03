dingus_fnc_FillLoot = {
  _eliteItems = ["NVGoggles_indep", "optic_TWS", "optic_Nightstalker"];
  _rareItems = ["ItemGPS", "optic_DMS", "optic_MRD", "muzzle_snds_B", "acc_flashlight", "bipod_01_F_blk", "srifle_DMR_06_olive_F", "optic_SOS", "arifle_MXM_F", "Rangefinder"];
  _commonItems = ["ItemWatch", "ItemWatch", "ItemWatch", "ItemWatch", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "optic_MRD", "acc_flashlight", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "Binocular"];
  _magazines = ["30Rnd_9x21_Mag", "9Rnd_45ACP_Mag", "20Rnd_762x51_Mag", "11Rnd_45ACP_Mag"];

  //TODO: Add hats, vests, backpacks

  params ["_boxes"];
  _box = _boxes select 0;

  {
    clearItemCargo _x; clearWeaponCargo _x; clearMagazineCargo _x; clearBackpackCargo _x;

    //Pick a number to determine which type we are going to get
    //_type = floor random 100;
    //hint format ["type: %1", count _boxes];

  /*
    //Get a random item from that list
    if (_type > 90) then {} else {
      //Elite
    };
    if (_type > 90) then {
      //Something else

    } else {
      //Common
    };
  */

    //Temp for now
    //_x addBackpackCargo [(_backpacks select floor random count _backpacks), 1];
    _x addItemCargo [(_eliteItems select floor random count _eliteItems), 1];
    _x addItemCargo [(_rareItems select floor random count _rareItems), 1];
    _x addItemCargo [(_commonItems select floor random count _commonItems), 1];
    _x addMagazineCargo [(_magazines select floor random count _magazines), 1];
  } forEach _boxes;
};