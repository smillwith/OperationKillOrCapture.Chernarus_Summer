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
<font size=18>BIGFOOT</font><br/><br/>
Bigfoot, also known as sasquatch, wildman, grassman, the boggy creek creature, and many other names, is a large reclusive human / ape hybrid that tends to live in heavily wooded forest areas and avoids interaction with humans if at all possible.

There have been many reported sightings and even interactions with this creature but little to no conclusive physical evidence of the creature exists and one has never been found killed or captured which leads skeptics to believe that it does not exist.
<br/><br/>

<img image=""research546313211.jpg"" width=""384"" height=""216""/><br/><br/>

Many people point to the fact that in most cases, the supposed encounters take place in and around areas that populations of bears are known to inhabit and that the sightings of a 'mysterious creature' are, in actuality, simply bear sightings.
"]];

  _researchFile2 = _unit createDiaryRecord ["research", ["Case 22017", "
Report # 22017  (Class B) 
<br/><br/>
Submitted by witness on Friday, November 16, 2007. 
<br/><br/>
--------------------------------------------------------------------------------
<br/><br/>
<font size=""18"">Possible wood knocks heard while staying at Wallace Falls State Park</font>
<br/><br/>
--------------------------------------------------------------------------------
<br/><br/>
YEAR: 2007<br/>
SEASON: Winter<br/>
MONTH: October<br/>
DATE: october 14th<br/>
STATE: Washington<br/>
COUNTY: Snohomish County<br/>
LOCATION DETAILS: Wallace Falls State Park<br/>
NEAREST TOWN: Goldbar<br/>
NEAREST ROAD: Highway 2<br/>
OBSERVED: I was staying in a cabin in Washington State. Around 2 in the morning, I heard wood knockings. I also heard dogs barking.I really couldn't tell you how far off the sounds came from.I do know that there were some houses upstream from the sounds.<br/>
ALSO NOTICED: I didn't hear any wildlife that night.<br/>
OTHER WITNESSES: None that I could tell, I was the only one renting a cabin that night. The rangers trailer was 25 yards behind me. <br/>
OTHER STORIES: No, this was my first time there.<br/>
TIME AND CONDITIONS: It was at 2 in the morning<br/>
ENVIRONMENT: In a campground. Not too cold, nor was it raining.A river was about two to three hundred yards from the cabin.<br/>

<br/><br/>
--------------------------------------------------------------------------------
<br/><br/>
Follow-up investigation report by BFRO Investigator John Ray:
<br/><br/>
After speaking with the witness by phone for a while I found him to be a very credible observer.
<br/><br/>
The witness is from California and was visiting the Seattle area with his wife while on vacation. His wife stayed in Seattle while he went and did some hiking and exploring in Wallace Falls State Park, which is near the small town of Gold Bar, Washinton, about 45 miles N/NE of Seattle. He had never been to Wallace Falls before and drove out there because it looked like a good place to explore.
<br/><br/>
He was staying the night in cabin C5 and was awakened about 2 AM to the sound of dogs barking in the distance. He then heard three or four wood knocks in quick succession, with the pattern being repeated several times over a two to three minute timeframe. The knocks seemed to be coming from a wooded area a few hundred yards from the cabin near the mountainside and Wallace river. 
<br/><br/>
He also added that while he was hiking the trail to the falls earlier in the day he went a bit off-trail into the woods and discovered what appeared to be a barefoot track that resembled a human footprint. He could not give the exact dimensions of the print but said it was small and about the size of a human child's print.
<br/><br/>
Having previously hiked the trail several times myself, I know that it is pretty popular with families with young children, so it is possible that it could have been a human child footprint. However, since it was October and fairly cold at the time, I highly doubt a child had recently been wandering around in the woods without wearing any shoes or hiking boots.
<br/><br/>
Given the early morning hour, fairly remote forest location, and a possible footprint in the area, it is quite possible that the wood knocks could have been made by a sasquatch. 
<br/><br/>
Photo taken of Wallace Falls<br/><br/>

<img image=""WallaceFalls.jpg"" width=""333"" height=""500"" />

<br/><br/>

--------------------------------------------------------------------------------<br/><br/>

About BFRO Investigator John Ray:<br/><br/>

John conducts BFRO report investigations in the Snohomish County area of Washington State. He has attended the 2006, 2008, and 2009 Washington Cascades expeditions, the 2009 and 2011 Washington Olympics-2nd expedition, the 2012 Western Washington expedition, the 2013, 2014, & 2015 Washington Cascades Area 1 Expeditions, and several other personal and private expeditions. 
<br/><br/>
"]];


  //Journal Fragments

  //Overview
  //My name is John Astor and I am an independent investigator specializing in the paranormal. I have heard reports from the town of Petrovka that several locals having encounters with a mysterious creature in the forest nearby.

  //Journal Fragment 1
  //Journal Fragment 2
  //Journal Fragment 3
  //Journal Fragment 4

};
