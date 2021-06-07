import '../custom_widgets.dart';
import 'package:dart_dice_parser/dart_dice_parser.dart';
import 'dart:ui';
import '../CustomAlert.dart';

class DicesRouteState extends State<DicesRoute> with RouteAware {


  Padding _getTextField() {
        return Padding(
            padding: EdgeInsets.all(0),
            child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.grey,
                height: SizeGetter.getDiceTextFieldheight(context),
                width: SizeGetter.getFullWidth(context),
                child: TextField(
                    controller : rl.tec,
                    maxLines: 100,
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context)),
                    decoration: InputDecoration.collapsed(
                        hintText: "Write dice/dices you want to roll. Separate with a new line each different roll.\nFor example you can write:\n1D6 + 4D10 + 20 --> 1 result\n2D6 + 2 --> 1 result\nThis will give 2 results.\nOr if you write like 8D10 will return you the 8 results.",
                        hintStyle: TextStyle(fontSize: SizeGetter.getSmallTextSize(context))
                    ),
                )
            )
        );
  }

  Padding _getRollButton() {
    return Padding(
      padding: EdgeInsets.only(top:5),
      child: Container(
          height: SizeGetter.getAppBarHeight(context),
          width: SizeGetter.getFullWidth(context),
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: ColorBuilder.getFirstColorAlternative())
            ),
            heroTag: "rollDices",
            backgroundColor: ColorBuilder.getFirstColorAlternative(),
            child: Text("Roll Dices", style: TextStyle(fontSize: SizeGetter.getNormalTextSize(context)),),
            onPressed: () {
              _roll(rl.tec.text);
            },
          )
      ),
    );
  }

  String _getRollResult(String text) {
      List<String> rolls = text.split("\n");
      DiceParser dp = new DiceParser();
      String results = "";
      for(String roll in rolls) {
          String r = dp.evaluate(roll).toString().split(": ")[1];
          results += "\"" + roll + "\" : " +
              ((r == "end of input expected" || r == "null") ? "Input not valid" : (r.contains(
                  ",") ? r : r.substring(1, r.length - 1))) + "\n\n";
      }
      return results;
  }
  
  Future<AlertDialog> _roll(String text) {
      TextStyle ts = TextStyle(fontSize: SizeGetter.getNormalTextSize(context));
      return showDialog(
          context: context,
          builder: (context) {
              return CustomAlertDialog(
                  contentPadding: EdgeInsets.all(0),
                  content:Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: ColorBuilder.getSecondBackgroundColor(),
                          border: Border.all(
                              color: ColorBuilder.getFirstTextWhite()),
                      ),
                      width: SizeGetter.getFullWidth(context),
                      height: SizeGetter.getTipsDialogHeight(context),
                      child: Column(
                          children: <Widget>[
                              Text("Your Rolls", style: TextStyle(fontSize: SizeGetter.getNormalTextSize(context), color: ColorBuilder.getFirstTextWhite())),
                              Container(height:20),
                              Expanded(
                                  flex: 1,
                                  child: new SingleChildScrollView(
                                      child: Text(_getRollResult(text), style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context), color: ColorBuilder.getFirstTextWhite()),)
                                  )
                              ),
                              Container(
                                  width: SizeGetter.getFullWidth(context),
                                  child: FloatingActionButton(
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.blueGrey)
                                      ),
                                      heroTag: "closeDices",
                                      backgroundColor: ColorBuilder.getErrorColor(),
                                      child: Text("Close", style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context)),),
                                      onPressed: () {
                                          Navigator.pop(context);
                                      }
                                  )
                              )
                          ]
                      )
                  )
              );
          }
      );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerBuilder.get(context),
        resizeToAvoidBottomPadding: false,
        backgroundColor: ColorBuilder.getBackgroundColor(),
        appBar: AppBarBuilder.getAppBar(context, "Dice Roller", tips: TipsBuilder.getDicesTips),
        body: Column(
            children: <Widget>[
                Container(height:20),
                _getTextField(),
                Container(height:20),
                _getRollButton()
            ],
        )
    );
  }

}


class DicesRoute extends StatefulWidget{

  DicesRoute({Key key}) : super(key: key);

  @override
  DicesRouteState createState() => new DicesRouteState();

}

