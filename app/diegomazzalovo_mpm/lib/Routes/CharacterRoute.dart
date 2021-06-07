import '../custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import '../custom_expansion_tile.dart' as custom;


class CharacterRouteState extends State<CharacterRoute> {

  FileReader _fileReader;
  BackgroundGenerator _backgroundGenerator;

  @override
  void initState() {
    _fileReader = widget.data.f;
    super.initState();
  }

  void loadDataFromFiles() async {
    await _fileReader.initData();
  }

  AutoSizeText getDropDownName(String text) {
    return AutoSizeText(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: SizeGetter.getMediumTextSize(context),
          color: Colors.white
      ),
    );
  }

  Theme _getDropdownButton(Map d, String category, {String subCategory = "INT", String subSubCategory = "", List<int> values}) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: ColorBuilder.getSecondBackgroundColor(),
        ),
        child: Container(
            width: SizeGetter.getFullWidth(context),
            height: SizeGetter.getBigTextSize(context),
            padding: EdgeInsets.symmetric(horizontal: SizeGetter.getMiniPadding(context)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  color: ColorBuilder.getFirstColor(), style: BorderStyle.solid, width: 1.80),
            ),
            child: DropdownButtonHideUnderline(
                child:ButtonTheme(
                    alignedDropdown: true,
                    child:  DropdownButton<int>(
                      isExpanded: true,
                      isDense: true,
                      iconEnabledColor: Colors.transparent,
                      value: (subSubCategory.length == 0) ? d[subCategory] : d[subCategory][subSubCategory],
                      onChanged: (int newValue) {
                        setState(() {
                          if(subSubCategory.length > 0)
                            d[subCategory][subSubCategory] = newValue;
                          else
                            d[subCategory] = newValue;
                        });
                      },
                      iconSize: 0,
                      style: TextStyle(color: ColorBuilder.getFirstColor(), fontSize: SizeGetter.getNormalTextSize(context)),
                      items: values.map<DropdownMenuItem<int>>((int value) {
                        return DropdownMenuItem<int>(
                            value: value,
                            child: Container(
                              height: SizeGetter.getBigTextSize(context),
                              padding: EdgeInsets.all(0),
                              child: Center(
                                child: Text(value.toString(),textAlign: TextAlign.center)
                              )

                            )
                        );}).toList(),
                    )
                )


            )

        )
    );
  }

  Flexible _getDropDownMenu(String category, {String subCategory = "INT", String subSubCategory = "", List<int> values = const [0,1,2,3,4,5,6,7,8,9,10]}) {
    Map<String, dynamic> d = widget.data.data[widget.data.actualCharacter][category];
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(bottom: 5),
          child: Container (
            width: SizeGetter.getFullWidth(context),
            height: SizeGetter.getBigTextSize(context),
            child: _getDropdownButton(d, category, subCategory: subCategory, subSubCategory: subSubCategory, values: values)

        ),
      )
    );
  }

  Container _getElementOfList(String topName, String subCategory, String subSubCategory, String name, {List<int> values = const [0,1,2,3,4,5,6,7,8,9,10]}) {
    return Container(
        width: SizeGetter.getFullWidth(context),
        height: SizeGetter.getExpansiontileHeight(context),
        padding: EdgeInsets.symmetric(horizontal: SizeGetter.getItemDescriptionPadding(context)),
        child: Column(
          children: <Widget>[
            getDropDownName(name),
            _getDropDownMenu(topName, subCategory: subCategory, subSubCategory: subSubCategory, values: values)
          ],
        )
    );
  }

  custom.ExpansionTile _getSkills() {
    Map<String, dynamic> skillJson = widget.data.data[widget.data.actualCharacter]["skills"];
    List<custom.ExpansionTile> skillsList = new List<custom.ExpansionTile>();
    for(String skillCategory in skillJson.keys) {
      List<Widget> listOfSingleCategory = new List();
      for (String skillName in skillJson[skillCategory].keys) {
        listOfSingleCategory.add(_getElementOfList("skills", skillCategory, skillName, skillName));
      }
      skillsList.add(
        custom.ExpansionTile(
          headerBackgroundColor: ColorBuilder.getSecondBackgroundColor(),
          iconColor: Colors.white,
          title: new Text("  " + skillCategory, style: TextStyle(color:ColorBuilder.getFirstTextWhite(),fontSize: SizeGetter.getMediumTextSize(context))),
          children: listOfSingleCategory
        )
      );
    }
    return _getCharacterCustomExp("Skills", skillsList);
  }

  custom.ExpansionTile _getStats() {
    var d = widget.data.data[widget.data.actualCharacter]["stats"];
    List<Container> statsList = new List();
    for(String statName in d.keys)
      statsList.add(_getElementOfList("stats", statName, "", statName));
    return _getCharacterCustomExp("Stats", statsList);
  }

  custom.ExpansionTile _getCharacterCustomExp(String title, List<Widget> children) {
    return custom.ExpansionTile(
        headerBackgroundColor: ColorBuilder.getSecondBackgroundColor(),
        iconColor: ColorBuilder.getFirstTextWhite(),
        title: new Text(title, style: TextStyle(color:ColorBuilder.getFirstTextWhite(),fontSize: SizeGetter.getNormalTextSize(context))),
        children: children
    );
  }

  custom.ExpansionTile _getOtherStats() {
    Map<String, dynamic> d = widget.data.data[widget.data.actualCharacter];
    TextStyle ts = TextStyle(color:Colors.white,fontSize: SizeGetter.getMediumTextSize(context));
    List<Widget> listElements = [
      ListTile(title:Text("  Run :  " + (d["stats"]["MA"]*3).toString(), style: ts)),
      ListTile(title:Text("  Leap :  " + (d["stats"]["MA"]*0.75).toString(), style: ts)),
      ListTile(title:Text("  Carry :  " + (d["stats"]["BODY"]*10).toString()  , style: ts)),
      ListTile(title:Text("  Lift :  " + (d["stats"]["BODY"]*40).toString(), style: ts)),
      ListTile(title:Text("  Body Type Modifier :  " + (_getDmgReduction(d["stats"]["BODY"])).toString(), style: ts)),
      ListTile(title:Text("  Save :  <= " + (_getSave(d["stats"]["BODY"], d["otherstats"]["Damages"])).toString(), style: ts)),
      _getOtherStat("Reputation"),
      _getOtherStat("Current IP", valuesForDropdownMenu: 100),
      _getOtherStat("Humanity", valuesForDropdownMenu: d["stats"]["EMP"]*10)
    ];
    return _getCharacterCustomExp("Other Stats", listElements);
  }

  Container _getOtherStat(String otherStatName, {int valuesForDropdownMenu = 10}) {
    return _getElementOfList("otherstats", otherStatName, "", otherStatName, values:List<int>.generate(valuesForDropdownMenu+1, (i) => i));
  }

  int _getDmgReduction(int body) {
    return ( (body <= 2) ? -0 : ( (body <= 4) ? -1 : ( (body <= 7) ? -2 : ( (body <= 9) ? -3 : ( (body == 10) ? -4 : -5 )))));
  }

  int _getSave(int body, int actualDamages) {
    int val = body - ( (actualDamages<=4) ? 0 : ( ( actualDamages%4 == 0 ) ? actualDamages~/4 - 1 : (actualDamages/4).truncate() ));
    return (val >= 0 ) ? val : 0;
  }

  String _getWoundState(int actualDamages){
    if(actualDamages >= 40)
      return "DEAD";
    int val = ( (actualDamages<=4) ? 0 : ( ( actualDamages%4 == 0 ) ? actualDamages~/4 - 1 : (actualDamages/4).truncate() ));
    return ( (val <= 0) ? "Light" : ( (val <= 1) ? "Serious" : ( (val <= 2) ? "Critical" : "Mortal " + (val-3).toString())));

  }

  custom.ExpansionTile _getSP() {
    List<Container> spList = new List<Container>();
    for(String spPart in widget.data.data[widget.data.actualCharacter]["otherstats"]["SP"].keys)
      spList.add(_getElementOfList("otherstats", "SP", spPart, spPart, values: List<int>.generate(51, (i) => i)));
    return _getCharacterCustomExp("  SP", spList);
  }

  custom.ExpansionTile _getDmgAndArmor() {
    Map<String, dynamic> d = widget.data.data[widget.data.actualCharacter];
    TextStyle ts = TextStyle(color:Colors.white,fontSize: SizeGetter.getMediumTextSize(context));
    List<Widget> damAndArmorList = new List();
    int dmg = d["otherstats"]["Damages"];
    damAndArmorList.add(_getSP());
    damAndArmorList.add(_getOtherStat("Damages", valuesForDropdownMenu: 40));
    damAndArmorList.add(ListTile(title:Text("  Wound State :  " + _getWoundState(dmg)  , style: ts)));
    return _getCharacterCustomExp("Life and Armor", damAndArmorList);
  }

  Flexible _getTextController(Map<String, dynamic> itemCategoryJson, String itemName) {
    TextEditingController tec = new TextEditingController.fromValue(new TextEditingValue(text: itemCategoryJson[itemName].toString(),selection: new TextSelection.collapsed(offset: itemCategoryJson[itemName].toString().length)));
    return Flexible(
      child: TextField(
        inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        style: new TextStyle(color: ColorBuilder.getFirstColor() , fontSize: SizeGetter.getMediumTextSize(context), ),
        decoration: new InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        controller:  tec,
        onChanged: (newValue){
          itemCategoryJson[itemName] = newValue;
        },
      )
    );
  }

  void _addItem(String typeOfItem, String itemName) {
    Map<String, dynamic> d = widget.data.data[widget.data.actualCharacter]["items"][typeOfItem];
    if (d[itemName] == null)
      d[itemName] = 1;
    widget.data.cr.write(widget.data.data);
  }

  void _deleteItem(String typeOfItem, String itemName) {
    widget.data.data[widget.data.actualCharacter]["items"][typeOfItem].remove(itemName);
    widget.data.cr.write(widget.data.data);
  }

  Container _getCustomExp( String category, List children, {double fontSize, double padding = 10, Color icon = Colors.white} ) {
    return new Container(
      child: new custom.ExpansionTile(
          headerBackgroundColor: ColorBuilder.getSecondBackgroundColor(),
          iconColor: icon,
          title: Row(
            children: [
              (category != "Items") ?  Padding(
                  padding: EdgeInsets.only(right:5),
                  child: BuildButtonNoAnimation.getButton(_onPressAddItem, boxShape: BoxShape.rectangle, icon:FontAwesomeIcons.plus, bgColor: ColorBuilder.getFirstColorAlternative(),
                                                        circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context),
                                                        par1: category)
              )
              : Container(),
              Text(category, style: TextStyle(color:ColorBuilder.getFirstTextWhite(),fontSize: fontSize))
            ],
          ),
          children: children
      )
    );
  }

  void _onPressAddItem(String category ) async {
    var res = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => new AddItemRoute(data: Data(actualItem: category, route: this),)
      ),
    );
    if(res != null)
      setState(() {_addItem(category, res);});
  }

  custom.ExpansionTile _getCustomExpForItems(BuildContext context, Map<String, dynamic> characterItemsJson, String itemName, String itemCategory, String itemDescription, TextStyle ts) {
    return new custom.ExpansionTile(
      headerBackgroundColor: ColorBuilder.getSecondBackgroundColor(),
      title: Row(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(right:10, left: 10),
              child: BuildButtonNoAnimation.getButton(
                  _onPressDeleteItem, 
                  icon:FontAwesomeIcons.minus, 
                  bgColor: ColorBuilder.getErrorColor(),
                  circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context)*0.8,
                  iconSize: SizeGetter.getInternalTipsButtonIconSize(context)*0.8,
                  par1: itemCategory, par2: itemName)
          ),
          Container(
            width: SizeGetter.getItemsTextWidth(context),
            child: getDropDownName(itemName)
          ),
          _getTextController(characterItemsJson[itemCategory], itemName)
        ],
      ),
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: SizeGetter.getItemDescriptionPadding(context)),
          child: Text(itemDescription, style: ts,),
          )
      ],
    );
  }

  _onPressDeleteItem(String itemCategory, String itemName) async {
    bool res = await YesNoDialogBuilder.displayDialogYesNo(context, "Are you sure to remove item $itemName ?");
    if(res != null) {
      setState(() {_deleteItem(itemCategory, itemName);});
    }

  }

  List _getListOfElements(Map<String, dynamic> characterItemsJson, String name) {
    List<Widget> res = new List();
    TextStyle tsErr = TextStyle(color:ColorBuilder.getErrorColor(),fontSize: SizeGetter.getMediumTextSize(context));
    TextStyle ts = TextStyle(color:ColorBuilder.getFirstTextWhite(),fontSize: SizeGetter.getSmallTextSize(context));
    if(characterItemsJson[name].keys.length == 0)
        res.add(ListTile(title: Text("No $name yet.", style: tsErr)));
    else
      for(String item in characterItemsJson[name].keys) {
        String el = "";
        if(name == "Weapons") el = _fileReader.findWeapon(item);
        else if(name == "Armors") el = _fileReader.findArmor(item);
        else if(name == "Special Equipment") el = _fileReader.findSpecialEquip(item);
        else el = _fileReader.findAmmo(item);
        res.add(_getCustomExpForItems(context, characterItemsJson, item, name, el, ts));
      }
    return res;
  }

  Container _getItems() {
    Map<String, dynamic> characterItemsJson = widget.data.data[widget.data.actualCharacter]["items"];
    List<Container> res = new List<Container>();
    List<Widget> weaponsList = _getListOfElements(characterItemsJson, "Weapons"),
        armorsList = _getListOfElements(characterItemsJson, "Armors"),
        ammosList = _getListOfElements(characterItemsJson, "Ammo"),
        spEquipList = _getListOfElements(characterItemsJson, "Special Equipment");

    res.add(_getCustomExp("Weapons", weaponsList, fontSize: SizeGetter.getMediumTextSize(context), padding: SizeGetter.getMiniPadding(context)));
    res.add(_getCustomExp("Ammo", ammosList, fontSize: SizeGetter.getMediumTextSize(context), padding: SizeGetter.getMiniPadding(context)));
    res.add(_getCustomExp("Armors", armorsList, fontSize: SizeGetter.getMediumTextSize(context), padding: SizeGetter.getMiniPadding(context)));
    res.add(_getCustomExp("Special Equipment", spEquipList, fontSize: SizeGetter.getMediumTextSize(context), padding: SizeGetter.getMiniPadding(context)));
    return _getCustomExp("Items", res, fontSize: SizeGetter.getNormalTextSize(context), padding: 0);
  }

  Container _getBackground({double fontSize, double padding = 0,  Color fontColor = Colors.blue, Color icon = Colors.white} ) {
    TextStyle ts = TextStyle(color:ColorBuilder.getFirstTextWhite(),fontSize: SizeGetter.getNormalTextSize(context));
    TextEditingController textEditingController = new TextEditingController.fromValue(new TextEditingValue(text: widget.data.data[widget.data.actualCharacter]["background"]));
    FocusNode focusNode = FocusNode();
    return new Container(
        padding: EdgeInsets.only(left: padding),
        child: new custom.ExpansionTile(
            headerBackgroundColor: ColorBuilder.getSecondBackgroundColor(),
            iconColor: icon,
            title: Text("Background", style: ts,),
            children: [
              Container(
                padding: EdgeInsets.only(left: SizeGetter.getMediumTextSize(context)),
                child: EditableText(
                  focusNode: focusNode,
                  maxLines: null,
                  controller: textEditingController,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeGetter.getMediumTextSize(context),
                  ),
                  keyboardType: TextInputType.multiline,
                  cursorColor: Colors.blue,
                  backgroundCursorColor: Colors.black,
                  onChanged: (text) {
                    widget.data.data[widget.data.actualCharacter]["background"] = text;
                  }
                )
              )
            ]
        )
    );
  }

  void _changeBackground(BuildContext context) async {
    bool res = await YesNoDialogBuilder.displayDialogYesNo(context, "Do you really want a new background??\nNew one will overwrite older one.");
    if(res != null) {
      setState(() {
        widget.data.data[widget.data.actualCharacter]["background"] = _backgroundGenerator.create();
        widget.data.cr.write(widget.data.data);
      });
    }
  }

  Container _getNewBackgroundButton() {
    return Container(
        padding: EdgeInsets.only(top:10),
        height: SizeGetter.getExpansiontileHeight(context),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.blueGrey)
          ),
          heroTag: "newBackground",
          backgroundColor: ColorBuilder.getFirstColorAlternative(),
          child: Text("Generate New Background", style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context)),),
          onPressed: () {
            _changeBackground(context);
          },
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    _backgroundGenerator = new BackgroundGenerator();
    List<Widget> children = [
      ListTile(
        title: Text("Class : " + widget.data.data[widget.data.actualCharacter]["class"],
        style: TextStyle(color: Colors.white, fontSize: SizeGetter.getNormalTextSize(context)),textAlign: TextAlign.left,)
      ),
      _getStats(),
      _getOtherStats(),
      _getDmgAndArmor(),
      _getSkills(),
      _getItems(),
      _getBackground(),
      _getNewBackgroundButton()
    ];
    return Scaffold(
        drawer: DrawerBuilder.get(context),
      backgroundColor: ColorBuilder.getBackgroundColor(),
      appBar: AppBarBuilder.getAppBar(context, widget.data.actualCharacter, tips: TipsBuilder.getCharacterRouteTips),
      body: Padding(
        padding: EdgeInsets.all(0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child:ListView.builder(
                itemCount: children.length,
                itemBuilder: (BuildContext context, int index) {
                  return children[index];
                }
              )
            )
          ],
        )
      )
    );

  }

  @override
  void deactivate() {
    widget.data.cr.write(widget.data.data);
    super.deactivate();
  }

  FileReader getFileReader() {
    return _fileReader;
  }
}




class CharacterRoute extends StatefulWidget{

  final Data data;

  CharacterRoute({Key key, this.data}) : super(key: key);

  @override
  CharacterRouteState createState() => new CharacterRouteState();

}

