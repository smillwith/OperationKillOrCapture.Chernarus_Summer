dingus_fnc_createDiary = {
  params ["_unit"];

  //Briefing
  
  _subjectHelp = _unit createDiarySubject ["subhelp", "Help"];;
  _titleHelpOverview = "Overview";
  _helpOverview = _unit createDiaryRecord ["subhelp", [_titleHelpOverview, "This is where you'll learn how to do things.<br/><br/>
    Getting Around<br/><br/>
    Looting<br/><br/>
    Locating the Creature<br/><br/>
    Sleeping<br/><br/>
    Weapon management<br/><br/>
    Deploying your bedroll<br/><br/>
    Deploying your tent<br/><br/>
  "]];

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

    <font size=14>BACKGROUND</font><br/><br/>
    <br/><br/>
    Interest in the North American Sasquatch intensified in the mid-20th century when amateur video surfaced purportedly showing a large female Sasquatch walking upright for some distance in its native habitat.
    <br/><br/>
    Thousands of similar sightings have been reported throughout the northwest United States in the following decades although to this day no indisputable evidence exists and therefore, most classify Bigfoot as a curiosity.
    <br/><br/>
    Available food sources include rabbits, squirrels, goats, and deer, not to mention numerous fruit bearing bushes and shrubs, large trees and moss.
    <br/><br/>
    The creature is said to walk upright on two legs and has long arms, similar to human. The body is large and  covered in dark hair or fur.
    <br/><br/>
    Most sightings have occurred at twilight hours as most believe creature to be nocturnal.
    <br/><br/>
    Existence of a breeding population of an unknown primate would require not just one but thousands of specimens to safely reduce chances of in-breeding.
    <br/><br/>
    Many people point to the fact that in most cases, the supposed encounters take place in and around areas that populations of bears are known to inhabit and that the sightings of a 'mysterious creature' are, in actuality, simply bear sightings.
    <br/><br/>
  "]];


  _researchFilePatterson = _unit createDiaryRecord ["research", ["Patterson / Gimlin Encounter", "
    

    In October 1967, Patterson and his friend Gimlin set out for the Six Rivers National Forest in far northern California. They drove in Gimlin's truck, carrying his provisions and three horses, positioned sideways. Patterson chose the area because of
    intermittent reports of the creatures in the past, and of their enormous footprints since 1958. (His familiarity with the area and its residents from prior visits may also have been a factor.)
    <br/><br/>
    The most recent of these reports was the nearby Blue Creek Mountain track find, which was investigated by journalist John Green, Bigfoot hunter René Dahinden, and archaeologist Don Abbott on and after August 28, 1967. This find was reported to
    Patterson (via his wife) soon thereafter by Al Hodgson, owner of the Willow Creek Variety Store, a five and dime at the time.
    <br/><br/>
    Though Gimlin says he doubted the existence of Sasquatch-like creatures, he agreed to Patterson's insistence that they should not attempt to shoot one.<br/><br/>

    As their stories went, in the early afternoon of Friday, October 20, Patterson and Gimlin were riding generally northeast (upstream) on horseback along the east bank of Bluff Creek. At sometime between 1:15 and 1:40 PM
    they ""came to an overturned tree with a large root system at a turn in the creek, almost as high as a room."" When they rounded it, ""there was a logjam — a 'crow's nest' — left over from the flood of '64,"" and then
    they spotted the figure behind it nearly simultaneously. It was either ""crouching beside the creek to their left"" or ""standing"" there, on the opposite bank. Gimlin later described himself as in a mild state of
    shock after first seeing the figure.<br/><br/>

    Patterson initially estimated its height at six and one-half to seven feet, and later raised his estimate to about seven and one-half feet. Some later analysts, anthropologist Grover Krantz among them, have suggested 
    Patterson's later estimate was about one foot too tall. Gimlin's estimate was six feet even.<br/><br/>

    The film shows what Patterson and Gimlin claimed was a large, hairy, bipedal, apelike figure with short, ""silvery brown"" or ""dark reddish-brown"" or ""black"" hair covering most of its body, including its prominent breasts.
    The figure in the Patterson–Gimlin film generally matches the descriptions of Bigfoot offered by others who claim to have seen one.<br/><br/>

    Patterson estimated he was about 25 ft (7.6 m) away from the creature at his closest. Patterson said that his horse reared upon sensing the figure, and he spent about twenty seconds extricating himself from the saddle, controlling
    his horse, getting around to its other side, and getting his camera from a saddlebag before he could run toward the figure while operating his camera. He yelled ""Cover me"" to Gimlin, ""meaning to get the gun out."" He
    crossed the creek on horseback after Patterson had run well beyond it, riding on a path somewhat to the left of Patterson's and somewhat beyond his position. [One researcher] estimates he came within 60–90 feet of the creature. Then, rifle
    in hand, he dismounted, but did not point his rifle at the creature.<br/><br/>

    The figure had walked away from them to a distance of about 120 ft (36.5 m) before Patterson began to run after it. The resulting film (about 59.5 seconds long at 16 fps) is initially quite shaky until Patterson got about 80 ft (24.4 m)
    from the figure. At that point, the figure glanced over its right shoulder at the men and Patterson fell to his knees; on Krantz's map this corresponds to frame 264. To researcher John Green, Patterson would later characterize the
    creature's expression as one of ""contempt and disgust...you know how it is when the umpire tells you 'one more word and you're out of the game.' That's the way it felt.""<br/><br/>

    Shortly after this point the steady, middle portion of the film begins, containing the famous look-back frame 352. Patterson said, ""it turned a total of I think three times,"" the other times therefore being before the filming
    began and/or while he was running with his finger off the trigger. Shortly after glancing over its shoulder on film, the creature disappeared behind a grove of trees for 14 seconds, then reappeared in the film's final 15 seconds
    after Patterson moved ten feet to a better vantage point, fading into the trees again and being lost to view at a distance of 265 feet as the reel of film ran out.<br/><br/>

    Gimlin remounted and followed it on horseback, keeping his distance, until it disappeared around a bend in the road three hundred yards away. Patterson called him back at that point, feeling vulnerable on foot without a rifle,
    because he feared the creature's mate might approach. The entire encounter had lasted less than two minutes.<br/><br/>

    Next, Gimlin and Patterson rounded up Patterson's horses, which had run off in the opposite direction, downstream, before the filming began. Patterson got his second roll of film from his saddlebag and filmed the tracks. Then
    the men tracked ""Patty"" for either one mile or three miles (5 km), but ""lost it in the heavy undergrowth."" They went to their campsite three miles south, picked up plaster, returned to the initial site, measured the creature's
    step-length, and made two plaster casts, one each of the best-quality right and left prints.<br/><br/>

    <img image=""Patterson_Gimlin_film_frame_352001f.jpg"" width=""238"" height=""267"" /><br/>
    <font size=""12"">Still frame from the now famous Patterson-Gimlin film.</font>
    <br/><br/>

    <br/><br/>
    Content source: https://en.wikipedia.org/wiki/Patterson-Gimlin_film
  "]];
  
  /*_researchFile2 = _unit createDiaryRecord ["research", ["Case 22017", "
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
    DATE: October 14th<br/>
    SEASON: Winter<br/>
    REGION: Northwest United States
    STATE: Washington<br/>
    COUNTY: Snohomish County<br/>
    LOCATION DETAILS: Wallace Falls State Park<br/>
    NEAREST TOWN: Goldbar<br/>
    NEAREST ROAD: Highway 2<br/>
    OBSERVED: I was staying in a cabin in Washington State. Around 2 in the morning, I heard wood knockings. I also heard dogs barking. I really couldn't tell you how far off the sounds came from. I do know that there were some houses upstream from the sounds.<br/>
    ALSO NOTICED: I didn't hear any wildlife that night.<br/>
    OTHER WITNESSES: None that I could tell, I was the only one renting a cabin that night. The rangers trailer was 25 yards behind me. <br/>
    OTHER STORIES: No, this was my first time there.<br/>
    TIME AND CONDITIONS: It was at 2 in the morning<br/>
    ENVIRONMENT: In a campground. Not too cold, nor was it raining. A river was about two to three hundred yards from the cabin.<br/>

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
  "]];*/


  //Journal Fragments

  //Overview
  //My name is John Astor and I am an independent investigator specializing in the paranormal. I have heard reports from the town of Petrovka that several locals having encounters with a mysterious creature in the forest nearby.

  //Journal Fragment 1
  //Journal Fragment 2
  //Journal Fragment 3
  //Journal Fragment 4

};
