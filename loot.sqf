dingus_fnc_FillLoot = {
  _eliteItems = ["NVGoggles_indep", "optic_TWS", "optic_Nightstalker", "Rangefinder"];
  _rareItems = ["ItemGPS", "optic_DMS", "muzzle_snds_B", "bipod_01_F_blk", "srifle_DMR_06_olive_F", "optic_SOS", "arifle_MXM_F", "hgun_ACPC2_F", "hgun_Pistol_heavy_01_F"];
  _clothingItems = ["U_B_CombatUniform_mcam", "H_Cap_grn_BI", "H_MilCap_mcamo", "V_BandollierB_khk", "V_TacVest_brn"];
  _magazines = ["30Rnd_9x21_Mag", "9Rnd_45ACP_Mag", "20Rnd_762x51_Mag", "11Rnd_45ACP_Mag", "30Rnd_65x39_caseless_mag"];
  _commonItems = ["ItemWatch", "ItemWatch", "ItemWatch", "ItemWatch", "ItemCompass", "ItemCompass", "ItemCompass", "ItemCompass", "optic_MRD", "acc_flashlight", "acc_flashlight", "acc_flashlight", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "FirstAidKit", "Binocular", "Chemlight_Blue", "Chemlight_Green", "Chemlight_Red"];

  //TODO: Add hats, vests, backpacks

  //Get boxes
  params ["_boxes"];
  _box = _boxes select 0;

  //For each Box
  {
    //Delete everytyhing in the box
    clearItemCargo _x; clearWeaponCargo _x; clearMagazineCargo _x; clearBackpackCargo _x;

    //Pick a number to determine which type of loot we are going to get
    _type = floor random 100;
    //hint format ["type: %1", count _boxes];

    //chance at elite
    if (_type >= 85) then {
      
      //Elite
      _x addItemCargo [(_eliteItems select floor random count _eliteItems), 1];

    } else {
      if (_type < 85 && _type > 60) then {
      
        //Rare
        _x addItemCargo [(_rareItems select floor random count _rareItems), 1];

      } else {

        //??

      };
    };
    
    //1 Magazine
    _x addMagazineCargo [(_magazines select floor random count _magazines), 1];

    //always get at least 1 Common item
    _x addItemCargo [(_commonItems select floor random count _commonItems), 1];
    
    //Sometimes you get one more Common
    if (_type mod 3 == 0) then {
      _x addItemCargo [(_commonItems select floor random count _commonItems), 1];  
    };
    
    //Temp for now
    _x addItemCargo [(_clothingItems select floor random count _clothingItems), 1];
    //_x addBackpackCargo [(_backpacks select floor random count _backpacks), 1];
    //_x addItemCargo [(_eliteItems select floor random count _eliteItems), 1];
    //_x addItemCargo [(_rareItems select floor random count _rareItems), 1];
    //_x addItemCargo [(_commonItems select floor random count _commonItems), 1];
    //_x addMagazineCargo [(_magazines select floor random count _magazines), 1];

  } forEach _boxes;
};