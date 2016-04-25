beast addAction ["Who are you?", {
  beast addItem "9Rnd_45ACP_Mag";
  beast addWeapon "hgun_ACPC2_F";
  missionNamespace setVariable ["creatureLocated", '1'];
}, [], 1.5, true, true, "", "missionNamespace getVariable ['creatureLocated', '1'] == '0'"];
