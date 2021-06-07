
class CharacterDataGetter {

  static Map<String, Map<String, int>> getSkills() {
    return {
      "Class": {
        "Authority (Cops)": 0,
        "Charismatic Leadership (Rockers)": 0,
        "Combat Sense (Solos)": 0,
        "Credibility (Medias)": 0,
        "Family (Nomad)": 0,
        "lnterface (Netrunner)": 0,
        "Jury Rig (Techie)": 0,
        "Medical Tech (Medtech)": 0,
        "Resources (Corporate)": 0,
        "Streetdeal (Fixer)": 0
      },
      "Attractiveness Skills": {
        "Personal Grooming": 0,
        "Wardrobe & Style": 0
      },
      "Body Type Skills ": {
        "Endurance": 0,
        "Strength Feat": 0,
        "Swimming": 0
      },
      "Cool/Willpower Skills": {
        "lnterrogation": 0,
        "lntimidate": 0,
        "Oratory": 0,
        "Resist Torture/Drugs": 0,
        "Streetwise": 0
      },
      "Empathy Skills": {
        "Human Perception": 0,
        "lnterview": 0,
        "Leadership": 0,
        "Seduction": 0,
        "Social": 0,
        "Persuasion & Fast Talk": 0,
        "Perform": 0
      },
      "lntelligence Skills": {
        "Accounting": 0,
        "Anthropology": 0,
        "Awareness/Notice": 0,
        "Biology": 0,
        "Botany": 0,
        "Chemistry": 0,
        "Composition": 0,
        "Diagnose lllness": 0,
        "Education & Generai Knowledge": 0,
        "Expert": 0,
        "Gamble": 0,
        "Geology": 0,
        "Hide/Evade": 0,
        "History": 0,
        "Know Language": 0,
        "Library Search": 0,
        "Mathematics": 0,
        "Physics": 0,
        "Programming": 0,
        "Shadow/Track": 0,
        "Stock Market": 0,
        "System Knowledge": 0,
        "Teaching": 0,
        "Wilderness Survival": 0,
        "Zoology": 0
      },
      "Reflex Skills ": {
        "Archery": 0,
        "Athletics": 0,
        "Brawling": 0,
        "Dance": 0,
        "Dodge & Escape": 0,
        "Driving": 0,
        "Fencing": 0,
        "Handgun": 0,
        "Heavy Weapons": 0,
        "Martial Arts": 0,
        "Aikido (3)": 0,
        "Animai Kung Fu (3)": 0,
        "Boxing (1)": 0,
        "Capoeria (3)": 0,
        "Choi Li Fut (3)": 0,
        "Judo(1)": 0,
        "Karate (2)": 0,
        "Tae Kwon Do (3)": 0,
        "Thai Kick Boxing (4)": 0,
        "Wrestling (1)": 0,
        "Melee": 0,
        "Motorcycle": 0,
        "Operate Heavy Machinery": 0,
        "Piloting": 0,
        "Pilot Gyro (3)": 0,
        "Pilot Fixed Wing(2)": 0,
        "Pilot Dirigible (2)": 0,
        "Pilot Vectored Thrust Vehicle (3)": 0,
        "Rifle": 0,
        "Stealth (2)": 0,
        "Submachinegun": 0
      },
      "Technical Skills ": {
        "Aero Tech (2)": 0,
        "AV Tech (3)": 0,
        "Basic Tech (2)": 0,
        "Cryotank Operation": 0,
        "Cyberdeck Design (2)": 0,
        "CyberTech (2)": 0,
        "Demolitions(2)": 0,
        "Disguise": 0,
        "Electronics": 0,
        "Electronic Security (2)": 0,
        "First Aid": 0,
        "Forgery": 0,
        "Gyro Tech (3)": 0,
        "Paint or Draw": 0,
        "Photography & Film": 0,
        "Pharmaceuticals (2)": 0,
        "Pick Lock": 0,
        "Pick Pocket": 0,
        "Play lnstrument": 0,
        "Weaponsmith (2)": 0
      }
    };
  }

  static Map<String, int> getStats() {
    return {
      "INT": 0,
      "ATTR": 0,
      "EMP": 0,
      "REF": 0,
      "LUCK": 0,
      "TECH": 0,
      "MA": 0,
      "COOL": 0,
      "BODY": 0
    };
  }

  static Map<String, int> _getSP() {
    return {
      "Head(1)": 0,
      "Torso(2-4)": 0,
      "R.Arm(5)": 0,
      "L.Arm(6)": 0,
      "R.Leg(7-8)": 0,
      "L.Leg(9-10)": 0
    };
  }

  static Map<String, Object> getOtherStats() {
    return {
      "Reputation": 0,
      "Current IP": 0,
      "Humanity": 0,
      "Damages": 0,
      "SP": _getSP()
    };
  }

  static Map<String, Map<String, int>> getItems() {
    return {
      "Cybernectics": {},
      "Gear": {},
      "Armors": {
      },
      "Weapons": {
      },
      "Ammo": {
      },
      "Special Equipment": {
      },
    };
  }

}