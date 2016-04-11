//Quest Dialogue functions

//---------------------------
//Hunting Shack
dingus_fnc_interview1 = {
  civ0 globalChat "I saw something crazy over at the hunting shack not far from here. I don't know what it was. Let me mark it on your map for you. I wouldn't go there at night though.";
  missionNamespace setVariable ["interview1", true];
  ["markerHuntingShack"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//civ0 addAction ["Interview", "[] call dingus_fnc_interview1", [], 1.5, true, true, "", "missionNamespace getVariable [""interview1"", false]"];
//---------------------------


//---------------------------
//Small Shack
dingus_fnc_interview2 = {
  civ1 globalChat "Check out the Small Shack way up in the North East. It's really spooky there around dawn. I'll never go back there again. Here's the location.";
  ["markerSmallShack"] call dingus_fnc_ShowMarker;
  missionNamespace setVariable ["interview2", true];
  hint "Your map has been updated."
};

//civ1 addAction ["Interview", "[] call dingus_fnc_interview2", [], 1.5, true, true, "", "missionNamespace getVariable [""interview2"", false]"];
//---------------------------



//---------------------------
//Radio Tower
dingus_fnc_interview3 = {
  civ2 globalChat "There's an abandoned radio tower to the East that most folks are afraid to visit. The crew that was stationed there disappeared without a trace one Summer.";
  missionNamespace setVariable ["interview3", true];
  ["markerRadioTower"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//civ2 addAction ["Interview", "[] call dingus_fnc_interview3", [], 1.5, true, true, "", "missionNamespace getVariable [""interview3"", false]"];
//---------------------------


//---------------------------
//Chapel Ruins
dingus_fnc_interview4 = {
  civ3 globalChat "Those chapel ruins to the North really freak me out. Ever since I heard what happened there, I won't visit anymore.";
  missionNamespace setVariable ["interview4", true];
  ["markerChapelRuins"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//civ3 addAction ["Interview", "[] call dingus_fnc_interview4", [], 1.5, true, true, "", "missionNamespace getVariable [""interview4"", false]"];
//---------------------------


//---------------------------
//Journalist
//Old Bungalow, Research Site
dingus_fnc_interview5 = {
  journalist1 globalChat "I'm here researching these stories too. In addition to what these guys have reported, I've also heard stories about the Old Bungalow and the Research Site. Both are on your map. Good luck out there!";
  missionNamespace setVariable ["interview5", true];
  ["markerOldBungalow"] call dingus_fnc_ShowMarker;
  ["markerResearchSite"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//journalist1 addAction ["Interview", "[] call dingus_fnc_interview5", [], 1.5, true, true, "", "missionNamespace getVariable [""interview5"", false]"];
//---------------------------


//---------------------------
//Guide
dingus_fnc_interview6 = {
  guide globalChat "I'm going to set up base camp. Follow me if you'd like. Otherwise, head through the forest entrance and I'll meet you there.";
  missionNamespace setVariable ["interview6", true];
  ["markerBaseCamp"] call dingus_fnc_ShowMarker;  // ---- fix this we need a different marker
  hint "Your map has been updated."
};

//guide addAction ["Interview", "[] call dingus_fnc_interview6", [], 1.5, true, true, "", "missionNamespace getVariable [""interview6"", false]"];
//---------------------------


//---------------------------
//Hunter
//markerCrashSite
dingus_fnc_interview7 = {
  hunter1 globalChat "If you haven't seen it yet, I'd take a trip over to the helicopter crash site and check it out. I'll mark it on your map.";
  missionNamespace setVariable ["interview7", true];
  ["markerCrashSite"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//hunter1 addAction ["Interview", "[] call dingus_fnc_interview7", [], 1.5, true, true, "", "missionNamespace getVariable [""interview7"", false]"];
//---------------------------

/*
Not sure why these conditions aren't working
       civ0 addAction ["Interview", "[] call dingus_fnc_interview1", [], 1.5, true, true, "", "missionNamespace getVariable ['interview1', false]"];
       civ1 addAction ["Interview", "[] call dingus_fnc_interview2", [], 1.5, true, true, "", "missionNamespace getVariable ['interview2', false]"];
       civ2 addAction ["Interview", "[] call dingus_fnc_interview3", [], 1.5, true, true, "", "missionNamespace getVariable ['interview3', false]"];
       civ3 addAction ["Interview", "[] call dingus_fnc_interview4", [], 1.5, true, true, "", "missionNamespace getVariable ['interview4', false]"];
journalist1 addAction ["Interview", "[] call dingus_fnc_interview5", [], 1.5, true, true, "", "missionNamespace getVariable ['interview5', false]"];
      guide addAction ["Interview", "[] call dingus_fnc_interview6", [], 1.5, true, true, "", "missionNamespace getVariable ['interview6', false]"];
    hunter1 addAction ["Interview", "[] call dingus_fnc_interview7", [], 1.5, true, true, "", "missionNamespace getVariable ['interview7', false]"];
*/

       civ0 addAction ["Interview", "[] call dingus_fnc_interview1", [], 1.5, true, true, "", "true"];
       civ1 addAction ["Interview", "[] call dingus_fnc_interview2", [], 1.5, true, true, "", "true"];
       civ2 addAction ["Interview", "[] call dingus_fnc_interview3", [], 1.5, true, true, "", "true"];
       civ3 addAction ["Interview", "[] call dingus_fnc_interview4", [], 1.5, true, true, "", "true"];
journalist1 addAction ["Interview", "[] call dingus_fnc_interview5", [], 1.5, true, true, "", "true"];
      guide addAction ["Interview", "[] call dingus_fnc_interview6", [], 1.5, true, true, "", "true"];
    hunter1 addAction ["Interview", "[] call dingus_fnc_interview7", [], 1.5, true, true, "", "true"];


//Action for setting up camp

//Action: "Set up Camp"
/**/
player0 addAction ["Set up Camp", {
  missionNamespace setVariable ["campready", true];
  skipTime 0.75;
}, [], 1.5, false, true, "", ""];
/**/
//Condition: triggerActivated tArrivedAtCamp
