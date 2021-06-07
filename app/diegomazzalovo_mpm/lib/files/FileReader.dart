import 'package:flutter/cupertino.dart';
import '../custom_widgets.dart';
import '../custom_expansion_tile.dart' as custom;

class FileReader {

  ListView _elements;
  List<List<String>> _listForSearchBar;
  Map<String, dynamic> _rulesJson;

  FileReader() {
    initData();
  }

  Future<void> loadRules() async {
      Directory dir = await getApplicationDocumentsDirectory();
      String path = dir.path;
      File f = File('$path/rules.json');
      _rulesJson = json.decode(f.readAsStringSync());
  }

  Future<Map<String, dynamic>> initData() async {
    await loadRules();
    return _rulesJson;
  }

    Map<String, dynamic> getRulesJson() {
      return _rulesJson;
    }

  List<List<String>> getListForSearchBar() {
    return _listForSearchBar;
  }

  FutureBuilder<String> createFromJson(BuildContext context, String fileToRead, String listViewTitle, {double paddingStep = 0}) {
    return FutureBuilder(
      future: _readJson(context, fileToRead),
      builder: (context, snapshot) {
        _elements =_buildJson(json.decode(snapshot.data.toString()), listViewTitle, size: SizeGetter.getNormalTextSize(context));
        return _elements;
      }
    );
  }

  Future<String> _readJson(BuildContext context, String fileToRead) async {
    return await DefaultAssetBundle.of(context).loadString(fileToRead);
  }

  List<custom.ExpansionTile> _build(Map<String, dynamic> jsonRulesFile, double fontSize, String tileTitle, {double padding = 0}) {
    List<custom.ExpansionTile> result = new List<custom.ExpansionTile>();
    if(jsonRulesFile != null) {
      for(String chapter in jsonRulesFile.keys) {
        if (jsonRulesFile[chapter] is Map && jsonRulesFile[chapter].containsKey("Type") == true && jsonRulesFile[chapter]['Type'] == "table")
          result.add(_buildText(chapter, FileReaderBuilders.buildTable(jsonRulesFile[chapter]), tileTitle, size: fontSize * 0.9, padding: padding));
        else if (jsonRulesFile[chapter] is String)
          result.add(_buildText(chapter, jsonRulesFile[chapter], tileTitle, size: fontSize * 0.9, padding: padding));
        else if (jsonRulesFile[chapter] is List && jsonRulesFile[chapter].length > 0 && jsonRulesFile[chapter][0] == "weapon")
          result.add(_buildText(chapter, FileReaderBuilders.buildWeaponList(jsonRulesFile[chapter]), tileTitle, size: fontSize * 0.9, padding: padding));
        else if (jsonRulesFile[chapter] is List && jsonRulesFile[chapter].length > 0 && jsonRulesFile[chapter][0] == "armor")
          result.add(_buildText(chapter, FileReaderBuilders.buildArmorList(jsonRulesFile[chapter]), tileTitle, size: fontSize * 0.9, padding: padding));
        else if (jsonRulesFile[chapter] is List && jsonRulesFile[chapter].length > 0 && jsonRulesFile[chapter][0] == "specialEquip")
          result.add(_buildText(chapter, FileReaderBuilders.buildSpecialEquip(jsonRulesFile[chapter]), tileTitle, size: fontSize * 0.9, padding: padding));
        else if (jsonRulesFile[chapter] is List && !(jsonRulesFile[chapter][0] is String))
          result.add(_buildText(chapter, FileReaderBuilders.buildBackgroundTable(jsonRulesFile[chapter]), tileTitle, size: fontSize * 0.9, padding: padding));
        else if (jsonRulesFile[chapter] is List)
          result.add(_buildText(chapter, FileReaderBuilders.buildArray(jsonRulesFile[chapter]), tileTitle, size: fontSize * 0.9, padding: padding));
        else
          result.add(
            custom.ExpansionTile(
              headerBackgroundColor: ColorBuilder.getSecondBackgroundColor(),
              iconColor: Colors.white,
              title: Padding(
                  padding: EdgeInsets.only(left: padding),
                  child: Text(chapter, style: TextStyle(color: ColorBuilder.getFirstTextWhite(), fontSize: fontSize * 0.9))
              ),
              children: _build(jsonRulesFile[chapter], fontSize * 0.9, chapter, padding: padding+fontSize/2)
            ),
          );
      }
    }
    return result;
  }

  ListView _buildJson(Map<String, dynamic> jsonRulesFile, String tileTitle, {double size=33}) {
    _listForSearchBar = new List<List<String>>();
    return new ListView(children: _build(jsonRulesFile, size-2, ""));
  }

  custom.ExpansionTile _buildText(String titleFather, String tileSubtitle, String tileTitle, {padding: 0, double size=10}) {
    _listForSearchBar.add(["$tileTitle ($titleFather)", tileSubtitle]);
    return CustomExpansionTileBuilder.getCustomExpansionTile(titleFather, tileSubtitle, size: size-2, padding: padding, color: ColorBuilder.getFirstTextWhite());
  }

  String findWeapon(String weaponName) {
    if(_rulesJson == null)
      return "";
    var d = _rulesJson["Putting the cyber into the punk"]["Weapons"]["Weapon List"];
    for (var k in d.keys)
      if (d[k][weaponName] != null)
        return FileReaderBuilders.buildWeaponList(d[k][weaponName]);
    return "";
  }

  String findArmor(String armorName) {
    if(_rulesJson == null)
      return "";
    var d = _rulesJson["Putting the cyber into the punk"]["Armors"]["Armor List"];
    if (d[armorName] != null)
      return FileReaderBuilders.buildArmorList(d[armorName]);
    return "";
  }

  String findAmmo(String ammoName) {
    if(_rulesJson == null)
      return "";
    var d = _rulesJson["Putting the cyber into the punk"]["Weapons"]["Reloads and options"]["Ammo(Type(quantity): cost)"];
    if (d[ammoName] != null)
      return FileReaderBuilders.buildAmmoList(d[ammoName]);
    return "";
  }

  String findSpecialEquip(String spName) {
    if(_rulesJson == null)
      return "";
    var d = _rulesJson["Putting the cyber into the punk"]["Special Equipment"];
    for (var k in d.keys)
      if (d[k][spName] != null)
        return FileReaderBuilders.buildSpecialEquip(d[k][spName]);
    return "";
  }

  Map<String, dynamic> getArmorsForChoose() {
    return (_rulesJson == null) ? {}: _rulesJson["Putting the cyber into the punk"]["Armors"]["Armor List"];
  }

  Map<String, dynamic> getWeaponsForChoose() {
    return (_rulesJson == null) ? {}: _rulesJson["Putting the cyber into the punk"]["Weapons"]["Weapon List"];
  }

  Map<String, dynamic> getAmmosForChoose() {
    return (_rulesJson == null) ? {}:  _rulesJson["Putting the cyber into the punk"]["Weapons"]["Reloads and options"]["Ammo(Type(quantity): cost)"];
  }

  Map<String, dynamic> getSPEquipForChoose() {
    return (_rulesJson == null) ? {}:  _rulesJson["Putting the cyber into the punk"]["Special Equipment"];
  }

}

