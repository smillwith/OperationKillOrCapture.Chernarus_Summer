// Sleeps (waits) for 8 hours
// Usage: [] execVM "sleep.sqf";
// Eg. player execVM "EnableWeaponHolstering.sqf";

if (!isServer) exitWith
{
    // Action makes no sense on player or AI units
};

skipTime 7.87;
