
import 'package:diegomazzalovo_mpm/custom_widgets.dart';
import '../CustomAlert.dart';

class YesNoDialogBuilder{

    static Future<dynamic> displayDialogYesNo(BuildContext context, String text) {
        return showDialog(
            context: context,
            builder: (context) {
                return CustomAlertDialog(
                    contentPadding: EdgeInsets.all(0),
                    content: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: ColorBuilder.getSecondBackgroundColor(),
                            border: Border.all(
                                color: ColorBuilder.getFirstTextWhite()),
                        ),
                        padding: EdgeInsets.all(0),
                        height: SizeGetter.getYesNoDialogHeight(context),
                        width: SizeGetter.getFullWidth(context),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                Container(height: 10),
                                Text(text, textAlign: TextAlign.center, style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context), color: ColorBuilder.getFirstTextWhite()),),
                                Container(
                                    height: SizeGetter.getYesNoHeight(context),
                                    width: SizeGetter.getYesNoWidth(context),
                                    child: new FlatButton(
                                        color: ColorBuilder.getErrorColor(),
                                        child: new Text('YES', style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context))),
                                        onPressed: () {
                                            Navigator.of(context).pop(true);
                                        },
                                    )
                                ),
                                Container(
                                    height: SizeGetter.getYesNoHeight(context),
                                    width: SizeGetter.getYesNoWidth(context),
                                    child: new FlatButton(
                                        color: Colors.green.withOpacity(0.8),
                                        child: new Text('NO', style: TextStyle(fontSize: SizeGetter.getMediumTextSize(context))),
                                        onPressed: () {
                                            Navigator.of(context).pop();
                                        },
                                    )
                                ),
                                Container(height: 20)
                            ],
                        )
                    )
                );
            }
        );
    }
}
