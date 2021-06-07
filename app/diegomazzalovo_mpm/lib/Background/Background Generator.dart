
import '../custom_widgets.dart';

class BackgroundGenerator {

  RandomGenerator random;

  BackgroundGenerator():
    random = new RandomGenerator();

  List _getRandomFromMap(Map m) {
    String res = "";
    int r = 0;
    if(m is Map<String, List>) {
      for (String el in m.keys) {
        r = random.getRandom(m[el].length);
        res += el + " : " + m[el][r] + "\n";
      }
      return [res, r];
    }
    r = random.getRandom(m.length);
    return [m.keys.toList()[r] + " - " + m.values.toList()[r], r];
  }
  
  String create() {
    return "\nORIGIN AND PERSONAL STYLE\n\n" + _getOriginAndPersonalStyle() +
        "\n\nFAMILY BACKGROUND\n\n" + _getFamilyBackground() +
        "\nMOTIVATIONS\n\n" + _getMotivations() +
        "\nLIFE EVENTS\n\n" + _getLifeEvents();
  }

  String _getLifeEvents() {
    int numberOfEvents = random.getRandom(14) + 2;
    String res = "Age : " + (numberOfEvents + 16).toString() + "\n\n";
    for(int i = 0; i < numberOfEvents; i++) {
      res += "Event at age " + (16 + i + 1).toString() + "\n";
      int event = random.getRandom(9) + 1;
      if(event <= 3)
        res += _getBigProblemBigWin();
      else if(event <= 6)
        res += _getFriendOrEnemy();
      else if(event <= 8)
        res += _getRomanticInvolvment();
      else
        res += "Nothing happened this year.";
      res += "\n";
    }
    return res;
  }

  String _getRomanticInvolvment() {
    int romanticEvent = random.getRandom(10) + 1;
    if(romanticEvent <= 4)
      return "Romantic Life : Happy love affair.";
    if(romanticEvent == 5)
      return _getTragicLoveAffair();
    if(romanticEvent <= 7)
      return _getLoveAffairWithProblems();
    return "Romantic life : Fast affairs and love dates.";
  }

  String _getLoveAffairWithProblems() {
    return _getRandomFromMap(BackgroundDataGetter.getProblemsOfLoveAffairs())[0] + "\n" + _getRandomFromMap(BackgroundDataGetter.getMutualFeelings())[0] ;
  }

  String _getTragicLoveAffair() {
    return _getRandomFromMap(BackgroundDataGetter.getTragicLoveAffairs())[0] + "\n" + _getRandomFromMap(BackgroundDataGetter.getMutualFeelings())[0] ;
  }

  String _getFriendOrEnemy() {
    return (random.getRandom(2) == 0) ? _getEnemy() : _getFriend();
  }

  String _getFriend() {
    return ((random.getRandom(2) == 0) ? "Male " : "Female ") + _getRandomFromMap(BackgroundDataGetter.getKindOfFriends())[0] + "\n";
  }

  String _getEnemy() {
    return ((random.getRandom(2) == 0) ? "Male " : "Female ") +
            _getRandomFromMap(BackgroundDataGetter.getKindOfEnemy())[0] + "\n" +
            _getRandomFromMap(BackgroundDataGetter.getCauseOfEnemy())[0] + "\n" +
            _getRandomFromMap(BackgroundDataGetter.getWhosFrackedOff())[0] + "\n" +
            _getRandomFromMap(BackgroundDataGetter.getWhatchaGonnaDoAboutIt())[0] + "\n" +
            _getRandomFromMap(BackgroundDataGetter.getWhatCanTheyThrowAgainstYou())[0] + "\n";
  }

  String _getBigProblemBigWin() {
    if(random.getRandom(2) == 0)
      return  _getRandomFromMap(BackgroundDataGetter.getDisasterStrikes())[0] + "\n" + _getRandomFromMap(BackgroundDataGetter.getWhatYouDoAboutDisaster())[0];
    return _getRandomFromMap(BackgroundDataGetter.getLuckyEvents())[0];
  }

  String _getMotivations() {
    return _getRandomFromMap(BackgroundDataGetter.getPersonalityTraits())[0] + "\n" + _getMostValuablePerson();
  }

  String _getMostValuedPossession() {
    return _getRandomFromMap(BackgroundDataGetter.getMostValuatedPossessions())[0];
  }

  String _getFeelingsAboutPeople() {
    return _getRandomFromMap(BackgroundDataGetter.getFeelingsAboutPeopleList())[0] + "\n" + _getMostValuedPossession();
  }

  String _getWhatYouValuateMost() {
    return _getRandomFromMap(BackgroundDataGetter.getValuateThings())[0] + "\n" + _getFeelingsAboutPeople();
  }

  String _getMostValuablePerson() {
    return _getRandomFromMap(BackgroundDataGetter.getValuablePeople())[0] + "\n" + _getWhatYouValuateMost();
  }

  String _getFamilyBackground() {
    List parents = _getParents();
    if(parents[1] + 1 <= 6)
      return _getFamilyRanking() + "\n" + parents[0] + "\n" + _getFamilyStatus();
    return _getFamilyRanking() + "\n" + parents[0] + "\n" + _getSomethingHappenedToYourParents();
  }

  String _getSiblings() {
    int numberOfSiblings = random.getRandom(10);
    if(numberOfSiblings >= 8 || numberOfSiblings == 0)
      return "Siblings : Only child.\n";
    String res = "Siblings : $numberOfSiblings\n\n";
    for(int i = 0; i < numberOfSiblings; i++) {
      int maleOrFemale = random.getRandom(2);
      int ageRelativeToYou = random.getRandom(10);
      res += "\t" + (i+1).toString() + "\n" +
          "\t-" + ((ageRelativeToYou <= 5) ? " Older " : ((ageRelativeToYou <= 9) ? "Younger " : "Twin ")) +
          ((maleOrFemale == 1) ? "Brother" : "Sister") +
          ("\n\t- " + _getRandomFromMap(BackgroundDataGetter.getSiblingFeelings())[0] + "\n");
    }
    return res;
  }

  String _getSomethingHappenedToYourParents() {
    return _getRandomFromMap(BackgroundDataGetter.getThingsHappenedToParentsList())[0] + "\n\n" + _getFamilyStatus();
  }

  String _getFamilyStatus() {
    List familyStatus =  _getRandomFromMap(BackgroundDataGetter.getFamilyStates());
    String res = familyStatus[0] + "\n";
    if(familyStatus[1] + 1 <= 6)
      res += _getFamilyTragedy();
    else
      res += _getChildhoodEnvironment();
    return res;
  }

  String _getFamilyTragedy() {
    return _getRandomFromMap(BackgroundDataGetter.getFamilyTragedies())[0] + "\n" + _getChildhoodEnvironment();
  }

  String _getChildhoodEnvironment() {
    return _getRandomFromMap(BackgroundDataGetter.getChildhoodEnvironments())[0] + "\n" + _getSiblings();
  }

  List _getParents() {
    return _getRandomFromMap(BackgroundDataGetter.getParentsStatus());
  }

  String _getFamilyRanking() {
    return _getRandomFromMap(BackgroundDataGetter.getFamilyRankings())[0];
  }

  String _getOriginAndPersonalStyle() {
    return  _getRandomFromMap(BackgroundDataGetter.getClothes())[0] + "\n" +
            _getRandomFromMap(BackgroundDataGetter.getHairstyle())[0] + "\n" +
            _getRandomFromMap(BackgroundDataGetter.getAffectations())[0] + "\n" +
            "Origin - Language(Select one, delete the others) : " + (_getRandomFromMap(BackgroundDataGetter.getOrigins()))[0];
  }

}