dingus_fnc_createDiary = {
  params ["_unit"];

  //hint format ["%1", _unit];

  //Briefing
  _subjectBriefing = "Diary";
  _titleSituation = "Situation";
  _titleMission = "Mission";

  _entry1 = _unit createDiaryRecord [_subjectBriefing, [_titleSituation, "Situation report here..."]];
  _entry2 = _unit createDiaryRecord [_subjectBriefing, [_titleMission, "Hello world"]];

  //Research?

  //Fragments

};
