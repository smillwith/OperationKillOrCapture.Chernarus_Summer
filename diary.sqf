dingus_fnc_createDiary = {
  params ["_unit"];

  //hint format ["%1", _unit];

  //Briefing
  _subjectBriefing = "Diary";
  _titleSituation = "Situation";
  _titleMission = "Mission";

  _entry1 = _unit createDiaryRecord [_subjectBriefing, [_titleSituation, "Situation report here..."]];
  _entry2 = _unit createDiaryRecord [_subjectBriefing, [_titleMission, "Investigate the recent sightings of a mysterious creature near the town of Petrovka. Observe, document, and capture the creature if possible. Do not kill the creature unless threatened."]];

  //Research
  _subjectResearch = _unit createDiarySubject ["research", "Research Notes"];
  _researchFile1 = _unit createDiaryRecord ["research", ["Overview", "
<font size=18>BIGFOOT</font><br><br>
Bigfoot, also known as sasquatch, wildman, grassman, the boggy creek creature, and many other names, is a large reclusive human / ape hybrid that tends to live in heavily wooded forest areas and avoids interaction with humans if at all possible.

There have been many reported sightings and even interactions with this creature but little to no conclusive physical evidence of the creature exists and one has never been found killed or captured which leads skeptics to believe that it does not exist.
<br/><br/>

<img image=""research546313211.jpg"" width=""384"" height=""216""/><br/><br/>

Many people point to the fact that in most cases, the supposed encounters take place in and around areas that populations of bears are known to inhabit and that the sightings of a 'mysterious creature' are, in actuality, simply bear sightings.
"]];

  //Journal Fragments

  //Overview
  //My name is John Astor and I am an independent investigator specializing in the paranormal. I have heard reports from the town of Petrovka that several locals having encounters with a mysterious creature in the forest nearby.

  //Journal Fragment 1
  //Journal Fragment 2
  //Journal Fragment 3
  //Journal Fragment 4

};
