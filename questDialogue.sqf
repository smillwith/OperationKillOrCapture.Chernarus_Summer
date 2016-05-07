//Quest Dialogue functions

dingus_fnc_interview0 = {
  guide globalChat "Hello, I am Johan, a local guide. I will be assisting you on your visit. I suggest you start by interviewing the local witnesses.";
  missionNamespace setVariable ["interview0", '1'];
};

dingus_fnc_interview8 = {
  guide globalChat "OK that's great. I think we should make our way into the forest and set up base camp before dark. Follow me. Let's go.";
  missionNamespace setVariable ["interview8", '1'];
};

dingus_fnc_interview8b = {
  guide globalChat "OK that's fine. I think we should make our way into the forest and set up base camp before dark. Follow me. Let's go.";
  missionNamespace setVariable ["interview8", '1'];
};

dingus_fnc_interview9 = {
  guide globalChat "I'd get started by visiting some of the sights highlighted on your map. Once you've done that, I think you might have a better understanding of what you're after.";
  missionNamespace setVariable ["interview9", '1'];
};

dingus_fnc_johanCompanion = {
  guide globalChat "Sure thing. I'm right behind you.";
  //add him to the group
  [guide] join playerGroup;
  missionNamespace setVariable ["johanCompanion", '1'];
};

dingus_fnc_johanDismissed = {
  guide globalChat "No problem. I'll head back to the camp.";
  //create the group again
  _johanGroup = createGroup civilian;
  [guide] joinSilent _johanGroup;
  missionNamespace setVariable ["johanCompanion", '0'];

  //Move him back to the camp??
  //Create a waypoint for him to get back
};

//missionNamespace setVariable ["johanCompanion", '0'];

//---------------------------
//Hunting Shack
dingus_fnc_interview1 = {
  civ0 globalChat "I saw something crazy over at the hunting shack not far from here. I don't know what it was. Let me mark it on your map for you. I wouldn't go there at night though.";
  missionNamespace setVariable ["interview1", '1'];
  ["markerHuntingShack"] call dingus_fnc_ShowMarker;
  hint "Your map and journal have been updated."
};

//civ0 addAction ["Interview", "[] call dingus_fnc_interview1", [], 1.5, true, true, "", "missionNamespace getVariable [""interview1"", false]"];
//---------------------------


//---------------------------
//Small Shack
dingus_fnc_interview2 = {
  civ1 globalChat "Check out the Small Shack way up in the North East. It's really spooky there around dawn. I'll never go back there again. Here's the location.";
  ["markerSmallShack"] call dingus_fnc_ShowMarker;
  missionNamespace setVariable ["interview2", '1'];
  hint "Your map and journal have been updated."
};

//civ1 addAction ["Interview", "[] call dingus_fnc_interview2", [], 1.5, true, true, "", "missionNamespace getVariable [""interview2"", false]"];
//---------------------------



//---------------------------
//Radio Tower
dingus_fnc_interview3 = {
  civ2 globalChat "There's an abandoned radio tower to the East that most folks are afraid to visit. The crew that was stationed there disappeared without a trace one Summer.";
  missionNamespace setVariable ["interview3", '1'];
  ["markerRadioTower"] call dingus_fnc_ShowMarker;
  hint "Your map and journal have been updated."
};

//civ2 addAction ["Interview", "[] call dingus_fnc_interview3", [], 1.5, true, true, "", "missionNamespace getVariable [""interview3"", false]"];
//---------------------------


//---------------------------
//Chapel Ruins
dingus_fnc_interview4 = {
  civ3 globalChat "Those chapel ruins to the North really freak me out. Ever since I heard what happened there, I won't visit anymore.";
  missionNamespace setVariable ["interview4", '1'];
  ["markerChapelRuins"] call dingus_fnc_ShowMarker;
  hint "Your map and journal have been updated."
};

//civ3 addAction ["Interview", "[] call dingus_fnc_interview4", [], 1.5, true, true, "", "missionNamespace getVariable [""interview4"", false]"];
//---------------------------


//---------------------------
//Journalist
//Old Bungalow, Research Site
dingus_fnc_interview5 = {
  journalist1 globalChat "I'm here researching these stories too. In addition to what these guys have reported, I've also heard stories about the Old Bungalow and the Research Site. I've marked both locations on your map. Good luck out there!";
  missionNamespace setVariable ["interview5", '1'];
  ["markerOldBungalow"] call dingus_fnc_ShowMarker;
  ["markerResearchSite"] call dingus_fnc_ShowMarker;
  hint "Your map and journal have been updated."
};

//journalist1 addAction ["Interview", "[] call dingus_fnc_interview5", [], 1.5, true, true, "", "missionNamespace getVariable [""interview5"", false]"];
//---------------------------


//---------------------------
//Guide
dingus_fnc_interview6 = {
  guide globalChat "I'm going to set up base camp. Follow me if you'd like. Otherwise, head through the forest entrance and I'll meet you there.";
  missionNamespace setVariable ["interview6", '1'];
  ["markerBaseCamp"] call dingus_fnc_ShowMarker;  //TODO: fix this we need a different marker
  hint "Your map and journal have been updated."
};

//guide addAction ["Interview", "[] call dingus_fnc_interview6", [], 1.5, true, true, "", "missionNamespace getVariable [""interview6"", false]"];
//---------------------------


//---------------------------
//Hunter
//markerCrashSite
dingus_fnc_interview7 = {
  hunter1 globalChat "If you haven't seen it yet, I'd take a trip over to the helicopter crash site and check it out. I'll mark it on your map.";
  missionNamespace setVariable ["interview7", '1'];
  ["markerCrashSite"] call dingus_fnc_ShowMarker;
  hint "Your map has been updated."
};

//hunter1 addAction ["Interview", "[] call dingus_fnc_interview7", [], 1.5, true, true, "", "missionNamespace getVariable [""interview7"", false]"];
//---------------------------


dingus_fnc_MedicIntro = {
  medic1 globalChat "Hi, I am the local doctor. I can patch you up if you get hurt.";
};

dingus_fnc_EngineerIntro = {
  engineer1 globalChat "Hi, I am the local repair man. I can fix your vehicle if it gets damaged.";
};

       civ0 addAction ["<t color='#FEB100'>Interview witness</t>", "[] call dingus_fnc_interview1", [], 1.5, true, true, "", "missionNamespace getVariable ['interview0', '0'] == '1' && missionNamespace getVariable ['interview1', '0'] == '0';"];
       civ1 addAction ["<t color='#FEB100'>Interview witness</t>", "[] call dingus_fnc_interview2", [], 1.5, true, true, "", "missionNamespace getVariable ['interview1', '0'] == '1' && missionNamespace getVariable ['interview2', '0'] == '0';"];
       civ2 addAction ["<t color='#FEB100'>Interview witness</t>", "[] call dingus_fnc_interview3", [], 1.5, true, true, "", "missionNamespace getVariable ['interview2', '0'] == '1' && missionNamespace getVariable ['interview3', '0'] == '0';"];
       civ3 addAction ["<t color='#FEB100'>Interview witness</t>", "[] call dingus_fnc_interview4", [], 1.5, true, true, "", "missionNamespace getVariable ['interview3', '0'] == '1' && missionNamespace getVariable ['interview4', '0'] == '0';"];
journalist1 addAction ["Are you investigating the creature too?", "[] call dingus_fnc_interview5", [], 1.5, true, true, "", "missionNamespace getVariable ['interview5', '0'] == '0';"];  //Journalist interview5
    hunter1 addAction ["What do you know about the creature?", "[] call dingus_fnc_interview7", [], 1.5, true, true, "", "missionNamespace getVariable ['interview7', '0'] == '0';"];  //Hunter interview7

      guide addAction ["<t color='#FEB100'>Are you Johan my contact?</t>", "[] call dingus_fnc_interview0", [], 1.5, true, true, "", "missionNamespace getVariable ['interview0', '0'] == '0';"];
      guide addAction ["<t color='#FEB100'>I want to interview the witnesses later.</t>", "[] call dingus_fnc_interview8b", [], 1.5, true, true, "", "missionNamespace getVariable ['interview0', '1'] == '1' && missionNamespace getVariable ['interview6', '0'] == '0' && missionNamespace getVariable ['interview8', '0'] == '0';"];
      guide addAction ["<t color='#FEB100'>I'm done interviewing the witnesses.</t>", "[] call dingus_fnc_interview8", [], 1.5, true, true, "", "missionNamespace getVariable ['interview6', '0'] == '1' && missionNamespace getVariable ['interview8', '0'] == '0';"];
      guide addAction ["<t color='#FEB100'>What do I do now?</t>", "[] call dingus_fnc_interview9", [], 1.5, true, true, "", "missionNamespace getVariable ['campready', '0'] == '1' && missionNamespace getVariable ['interview9', '0'] == '0';"];
      guide addAction ["<t color='#FFFFFF'>Do you want to come with me?</t>", "[] call dingus_fnc_johanCompanion", [], 1.5, true, true, "", "missionNamespace getVariable ['johanCompanion', '0'] == '0' && missionNamespace getVariable ['interview9', '0'] == '1';"];
      guide addAction ["<t color='#FFFFFF'>You're dismissed. Go back to the camp for now.</t>", "[] call dingus_fnc_johanDismissed", [], 1.5, false, true, "", "missionNamespace getVariable ['johanCompanion', '0'] == '1';"];

