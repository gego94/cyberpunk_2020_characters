import 'package:flutter/cupertino.dart';
import '../custom_widgets.dart';


class CharsRouteState extends State<CharsRoute> {
  final TextEditingController _textFieldController = TextEditingController();
  String dropDownValue = "Rocker";
  final List<String> classes = ["Rocker", "Solo", "Net", "Media", "Nomad", "Fixer", "Cop", "Corp", "Techie", "Doctor"];

  void initializeCR() {
      if(crb == false)
          charactersReaderGeneral = CharactersReader(context, this);
      else
          charactersReaderGeneral.set(context, this);
  }

  @override
  Widget build(BuildContext context) {
    initializeCR();
    return
      FutureBuilder(
        future: charactersReaderGeneral.read(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.hasData) {
            return Scaffold(
                drawer: DrawerBuilder.get(context),
              backgroundColor: ColorBuilder.getBackgroundColor(),
              appBar: AppBarBuilder.getAppBar(context, "Characters", tips: TipsBuilder.getCharsRouteTips),
              body: snapshot.data,
              floatingActionButton: Container(
                height: SizeGetter.getAddCharSize(context),
                width: SizeGetter.getAddCharSize(context),
                child: FloatingActionButton(
                  heroTag: "addChar",
                  backgroundColor: ColorBuilder.getFirstColorAlternative(),
                  child: Icon(
                      FontAwesomeIcons.plus,
                      size: SizeGetter.getInternalTipsButtonIconSize(context),
                  ),
                  onPressed: () async {
                    _addCharPress();
                  },
                ),
              ),
            );
          }
          else
            return Scaffold();
        },
      );
  }

  Future<void> _addCharPress() async {
    bool res = await _displayDialog(context);
    if( res != null) {
      charactersReaderGeneral.addCharacter(_textFieldController.text, dropDownValue);
      setState(() {
        _textFieldController.text = "";
      });
    }
  }

  Column _getClassSelectionForPopup() {
    return Column(
      children: [
        Text("Class", style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context))),
        Container(
          height: SizeGetter.getAddCharClassSelectionHeight(context),
          width: SizeGetter.getItemsTextWidth(context),
          child: FormField<String>(
            builder: (FormFieldState<String> state) {
              return Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Colors.black, style: BorderStyle.solid, width: 0.80),
                  ),
                child: DropdownButtonHideUnderline(
                    child:DropdownButton<String>(
                      value: dropDownValue,
                      iconSize: SizeGetter.getMediumTextSize(context),
                      onChanged: (String newValue) {
                        setState(() {dropDownValue = newValue;});
                        Navigator.pop(context);
                        _addCharPress();
                      },
                      items: classes.map<DropdownMenuItem<String>>((String className) {
                        return DropdownMenuItem<String>(
                          value: className,
                          child: Text(className, style: TextStyle(fontSize: SizeGetter.getSmallTextSize(context))),
                        );
                      }).toList(),
                    )
                )
              );
            }
          )
        )
      ]
    );
  }

  Future<dynamic> _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return new SingleChildScrollView(
              child: AlertDialog(
                  backgroundColor: Colors.grey,
                  content: Container(
                      width: SizeGetter.getFullWidth(context),
                      height: SizeGetter.getAddCharPopupHeight(context),
                      child: Column(
                          children: <Widget>[
                            Text('Add New Character', textAlign: TextAlign.center, style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context))),
                              Container(height: SizeGetter.getAppBarInternalPadding(context),),
                            _getDialogTextField(),
                              Container(height: SizeGetter.getAppBarInternalPadding(context),),
                            _getClassSelectionForPopup(),
                              Container(height: SizeGetter.getAppBarInternalPadding(context),),
                            _getDialogButton()
                          ]
                      )
                  )
              )
          );
        }
    );
  }

  Padding _getDialogTextField() {
      return
      Padding(
          padding: EdgeInsets.all(SizeGetter.getMiniPadding(context)),
          child: TextField(
              controller: _textFieldController,
              style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context)),
              decoration: InputDecoration(
                  hintText: "Type name...",
                  hintStyle: TextStyle(fontSize: SizeGetter.getMediumTextSize(context)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                  )
              ),
          ),
      );
  }

  Padding _getDialogButton() {
      return Padding(
          padding: EdgeInsets.all(SizeGetter.getMiniPadding(context)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Container(
                      width: SizeGetter.getItemsTextWidth(context),
                      height: SizeGetter.getAddCharClassSelectionHeight(context),
                      child: new FlatButton(
                          color: ColorBuilder.getFirstColorAlternative(),
                          child: new Text('OK', style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context), color: ColorBuilder.getFirstTextWhite())),
                          onPressed: () {
                              Navigator.of(context).pop(true);
                          },
                      ),
                  )
              ]
          )
      );
  }

  void update() {
    setState(() {});
  }

}


class CharsRoute extends StatefulWidget{

  CharsRoute({Key key}) : super(key: key);

  @override
  CharsRouteState createState() => new CharsRouteState();

}
