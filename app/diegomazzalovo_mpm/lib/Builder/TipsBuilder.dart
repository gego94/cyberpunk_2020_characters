
import '../custom_widgets.dart';
import '../CustomAlert.dart';

class TipsBuilder {

    static Column getDicesTipsText(BuildContext context) {
        return Column(
            children: <Widget>[
                Expanded(
                    flex: 1,
                    child: new SingleChildScrollView(
                        child: Text(TipsStringGetter.getDicesTipsString(), style: TextStyle(
                            color: ColorBuilder.getFirstTextWhite(),
                            fontSize: SizeGetter.getSmallTextSize(context)
                        )
                        )
                    )
                )
            ]
        );
    }

    static Column getRulesTipsText(BuildContext context) {
        return Column(
            children: <Widget>[
                Expanded(
                    flex: 1,
                    child: new SingleChildScrollView(
                        child: Text(TipsStringGetter.getRulesTipsString(),
                            style: TextStyle(
                                color: ColorBuilder.getFirstTextWhite(),
                                fontSize: SizeGetter.getSmallTextSize(context)
                            )
                        )
                    )
                )
            ]
        );
    }

    static Column getCharsRouteTipsText(BuildContext context) {
        return Column(
            children: <Widget>[
                Expanded(
                    flex: 1,
                    child: new SingleChildScrollView(
                        child: TipsStringGetter.getCharsRouteTipsString(context)
                    )
                )
            ]
        );
    }

    static Column getCharacterRouteTipsText(BuildContext context) {
        return Column(
            children: <Widget>[
                Expanded(
                    flex: 1,
                    child: new SingleChildScrollView(
                        child: TipsStringGetter.getCharacterRouteTipsString(context)
                    )
                )
            ]
        );
    }

    static Column getAddItemRouteTipsText(BuildContext context) {
        return Column(
            children: <Widget>[
                Expanded(
                    flex: 1,
                    child: new SingleChildScrollView(
                        child: TipsStringGetter.getAddItemRouteTipsString(context)
                    )
                )
            ]
        );
    }

    static Column getHomePageTipsText(BuildContext context) {
        return Column(
            children: <Widget>[
                Expanded(
                    flex: 1,
                    child: new SingleChildScrollView(
                        child: TipsStringGetter.getHomePageTipsString(context)
                    )
                )
            ]
        );
    }

    static Future<AlertDialog>  getAddItemRouteTips(BuildContext context) {
        return TipsBuilder.getShowDialog(context, TipsBuilder.getAddItemRouteTipsText);
    }

    static Future<AlertDialog>  getCharacterRouteTips(BuildContext context) {
        return TipsBuilder.getShowDialog(context, TipsBuilder.getCharacterRouteTipsText);
    }

    static Future<AlertDialog>  getDicesTips(BuildContext context) {
        return TipsBuilder.getShowDialog(context, TipsBuilder.getDicesTipsText);
    }

    static Future<AlertDialog>  getRulesTips(BuildContext context) {
        return TipsBuilder.getShowDialog(context, TipsBuilder.getRulesTipsText);
    }

    static Future<AlertDialog>  getCharsRouteTips(BuildContext context) {
        return TipsBuilder.getShowDialog(context, TipsBuilder.getCharsRouteTipsText);
    }

    static Future<AlertDialog>  getHomePageTips(BuildContext context) {
        return TipsBuilder.getShowDialog(context, TipsBuilder.getHomePageTipsText);
    }

    static Future<AlertDialog> getShowDialog(BuildContext context, Function tips) {
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
                        padding: EdgeInsets.all(5),
                        width: SizeGetter.getFullWidth(context),
                        height: SizeGetter.getTipsDialogHeight(context),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                        alignment: Alignment(1,0),
                                        child: BuildButtonNoAnimation.getButton(() => Navigator.of(context).pop(), icon: FontAwesomeIcons.times, bgColor: ColorBuilder.getErrorColor(),
                                            circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context)*0.7, iconSize: SizeGetter.getInternalTipsButtonIconSize(context)*0.7),

                                    )
                                ),
                                Expanded(child: tips(context))
                            ],
                        )
                    )
                );
            }
        );
    }

}