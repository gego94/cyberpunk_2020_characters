import 'package:flutter/cupertino.dart';

import '../custom_widgets.dart';

class CharactersReader {
  BuildContext _context;
  Map<String, dynamic> jsonWithCharacters;
  ListView _listViewWithCharacters;
  CharsRouteState _route;
  FileReader _fileReader;

  CharactersReader(BuildContext context, var r) {
    jsonWithCharacters = new Map<String, dynamic>();
    _fileReader = new FileReader();
    _route = r;
    _context = context;
    read();
  }

  void set(BuildContext context, var r) {
    _route = r;
    _context = context;
  }

  void write(Map<String, Object> m) async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path;
    File f = File('$path/characters.json');
    f.writeAsStringSync(json.encode(m));
  }

  Future<ListView> read() async {
    try {
      if(crb == false) {
        Directory dir = await getApplicationDocumentsDirectory();
        String path = dir.path;
        File f = File('$path/characters.json');
        jsonWithCharacters = json.decode(f.readAsStringSync());
        crb = true;
      }
      return _loadChars();
    }
    on FileSystemException {
      write({});
      return ListView();
    }
  }

  ListView getEmptyCharList() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("No Characters, yet. Click on the blue button to add new one.",
            style: TextStyle(
              color: ColorBuilder.getErrorColor(),
              fontSize: SizeGetter.getNormalTextSize(_context),
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  ListView _loadChars() {
    List<Widget> d = new List();
    try {
      if(jsonWithCharacters.keys.length > 0) {
        for (String character in jsonWithCharacters.keys)
          d.add(getInkwell(jsonWithCharacters, character));
        _listViewWithCharacters = new ListView.builder(
            itemCount: d.length,
            itemBuilder: (BuildContext context, int index) {
              return d[index];
            }
        );
        return _listViewWithCharacters;
      }
      return getEmptyCharList();
    }
    catch(e) {
      return ListView();
    }
  }

  void moveTo(Map<String, dynamic> charJSONData, String actualChar) async {
    await Navigator.push(
      _context,
      MaterialPageRoute(
          builder: (context) =>
          new CharacterRoute(
            data: Data(data: charJSONData, actualCharacter: actualChar, cr: this, f:_fileReader), )
      ),
    );
    write(jsonWithCharacters);
  }

  InkWell getInkwell(Map<String, dynamic> charJSONData, String actualChar) {
    return InkWell(
        onTap: () {
          moveTo(charJSONData, actualChar);
        },
        child: getContainer(actualChar)
    );
  }

  Container getContainer(String actualChar) {
    return Container(
        margin: EdgeInsets.all(SizeGetter.getMiniPadding(_context)),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
          )
      ),
      child: Container(
          color: ColorBuilder.getSecondBackgroundColor(),
          height: SizeGetter.getCharacterTileHeight(_context),
          child: Row(
            children: <Widget>[
              getCloseButton(actualChar),
              getTile(actualChar)
            ],
          )
      ),
    );
  }

  Flexible getTile(String actualChar) {
    return Flexible(
      child: ListTile(
        title: AutoSizeText(
          actualChar,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: SizeGetter.getNormalTextSize(_context),
            color: Colors.white
          ),
        )
      )
    );
  }

  Padding getCloseButton(String actualChar) {
    return Padding(
      padding: EdgeInsets.all(SizeGetter.getMiniPadding(_context)),
        child: BuildButtonNoAnimation.getButton(_close, circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(_context), icon: FontAwesomeIcons.times,
              iconColor: Colors.white, bgColor: ColorBuilder.getErrorColor(), iconSize: SizeGetter.getInternalTipsButtonIconSize(_context), par1: actualChar)
    );
  }

  void _close(String character) async {
    bool res = await YesNoDialogBuilder.displayDialogYesNo(_context, 'Are you sure? \nThis action is irreversible.');
    if(res != null) {
      deleteChar(character);
      Navigator.pushNamed(_context, "/Characters");
    }

  }
  void deleteChar(String charToRemove) async {
    jsonWithCharacters.remove(charToRemove);
    write(jsonWithCharacters);
    read();
  }

  Future<dynamic>  displayErrorAlreadyExistingCharacter(String error) async{
    return showDialog(
        context: _context,
        builder: (context) {
          return AlertDialog(
              backgroundColor: Colors.transparent,
              content: Container(
                  width: SizeGetter.getFullWidth(context),
                  height: SizeGetter.getAddCharPopupHeight(context),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: ColorBuilder.getSecondBackgroundColor(),
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.white, style: BorderStyle.solid, width: 0.80),
                  ),
                  child: Column(
                      children: <Widget>[

                      Container(
                        alignment: Alignment(1,0),
                        padding: EdgeInsets.all(SizeGetter.getMiniPadding(_context)),
                        child: BuildButtonNoAnimation.getButton(pop, circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(_context), icon: FontAwesomeIcons.times,
                          iconColor: Colors.white, bgColor: ColorBuilder.getErrorColor(), iconSize: SizeGetter.getInternalTipsButtonIconSize(_context))
                        ),
                        Text(
                          error,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: ColorBuilder.getErrorColor(), fontSize: SizeGetter.getNormalTextSize(context)),
                        )
                      ]
                  )
              )
          );
        }
    );
  }

  void pop() {
    Navigator.pop(_context);
  }

  void addCharacter(String newCharacterName, String newCharacterClass) async {
    if(newCharacterName == "") {
      await displayErrorAlreadyExistingCharacter("Empty name not valid.");
      return null;
    }
    if(jsonWithCharacters[newCharacterName] != null) {
      await displayErrorAlreadyExistingCharacter("Character\nalready\nexisting.");
      return null;
    }

    jsonWithCharacters[newCharacterName] = {
      "class": newCharacterClass,
      "stats": CharacterDataGetter.getStats(),
      "skills": CharacterDataGetter.getSkills(),
      "otherstats": CharacterDataGetter.getOtherStats(),
      "items": CharacterDataGetter.getItems(),
      "background": "No background, yet."
    };
    write(jsonWithCharacters);
    crb = false;
    read();
  }

  void addItem(String characterToAddItem, String typeOfItem, String nameOfItem) {
    if(jsonWithCharacters != null) {
      Map d = jsonWithCharacters[characterToAddItem]["Items"][typeOfItem];
      if (d[nameOfItem] == null) {
        d[nameOfItem] = 1;
        write(jsonWithCharacters);
      }
    }
  }

  ListView getData() {
    return _listViewWithCharacters;
  }

  Map getChars() {
    return jsonWithCharacters;
  }
  
}