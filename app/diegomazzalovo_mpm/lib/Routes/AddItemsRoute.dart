import '../custom_widgets.dart';
import '../custom_expansion_tile.dart' as custom;


class AddItemRouteState extends State<AddItemRoute> {

  FileReader _fileReader ;

  @override
  initState()  {
    super.initState();
  }

  void _onPressAdditem(String itemName) {
    Navigator.of(context).pop(itemName);
  }

  custom.ExpansionTile _getCustomExpForItems(String itemName, String itemDescription, TextStyle ts) {
    return custom.ExpansionTile(
      headerBackgroundColor: ColorBuilder.getSecondBackgroundColor(),
      title: Row(
        children: <Widget>[
          BuildButtonNoAnimation.getButton(_onPressAdditem, boxShape: BoxShape.rectangle, icon:FontAwesomeIcons.arrowAltCircleDown,
              bgColor: ColorBuilder.getFirstColorAlternative(), circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context),
              par1: itemName),
          Container(
              width: 10
          ),
          Container(
            width: SizeGetter.getAppBarTextWidth(context)*0.96,
            child: widget.data.route.getDropDownName(itemName)
          )
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

  List<custom.ExpansionTile> _getArmorAmmo(Function get, Function find) {
    TextStyle ts = TextStyle(color:ColorBuilder.getFirstTextWhite(),fontSize: SizeGetter.getSmallTextSize(context));
    List<custom.ExpansionTile> res = new List<custom.ExpansionTile>();
    List<String> elements = (get().keys).toList();
    elements.sort((a, b) {return a.toLowerCase().compareTo(b.toLowerCase());});
    for(String elementName in elements)
      if(elementName != "Type")
          res.add(_getCustomExpForItems(elementName, find(elementName), ts));
    return res;
  }

  List<custom.ExpansionTile> _getWeaponSpecialEquip(Function get, Function find) {
    TextStyle ts = TextStyle(color:ColorBuilder.getFirstTextWhite(), fontSize: SizeGetter.getSmallTextSize(context));
    Map<String, dynamic> elements = get();
    List<custom.ExpansionTile> res = new List<custom.ExpansionTile>();
    List<String> names = new List<String>();
    for(String itemCategory in elements.keys)
      names.addAll(elements[itemCategory].keys);
    names.sort((a, b) {return a.toLowerCase().compareTo(b.toLowerCase());});
    for (String itemName in names)
      res.add(_getCustomExpForItems(itemName, find(itemName), ts));
    return res;
  }

  List<custom.ExpansionTile> getListOfItems(String itemType) {
    if(itemType == "Armors")
      return _getArmorAmmo(_fileReader.getArmorsForChoose, _fileReader.findArmor);
    else if(itemType == "Weapons")
      return _getWeaponSpecialEquip(_fileReader.getWeaponsForChoose, _fileReader.findWeapon);
    else if(itemType == "Ammo")
      return _getArmorAmmo(_fileReader.getAmmosForChoose, _fileReader.findAmmo);
    return _getWeaponSpecialEquip(_fileReader.getSPEquipForChoose, _fileReader.findSpecialEquip);
  }

  @override
  Widget build(BuildContext context) {
    _fileReader = widget.data.route.getFileReader();
    List<custom.ExpansionTile> children = getListOfItems(widget.data.actualItem);
    return Scaffold(
        drawer: DrawerBuilder.get(context),
      backgroundColor: ColorBuilder.getBackgroundColor(),
      appBar: AppBarBuilder.getAppBar(context, "Add new " + widget.data.actualItem, tips: TipsBuilder.getAddItemRouteTips),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
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

}




class AddItemRoute extends StatefulWidget{

  final Data data;

  AddItemRoute({Key key, this.data}) : super(key: key);

  @override
  AddItemRouteState createState() => new AddItemRouteState();

}

