import '../custom_widgets.dart';

class AppBarBuilder {
    static void f(BuildContext context) {print("No tips.");}

    static PreferredSize getAppBar(BuildContext context, String title, {Function tips = AppBarBuilder.f} ) {
        return PreferredSize(
            preferredSize: Size(SizeGetter.getFullWidth(context), SizeGetter.getAppBarHeight(context)),
            child: Container(
                color: ColorBuilder.getAppBarColor(),
                child: Column(
                    children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top:MediaQuery.of(context).padding.top-1,
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    AppBarBuilder.getAppIconButton(context),
                                    AppBarBuilder.getAppBarText(context, title),
                                    AppBarBuilder.getAppTipsButton(context, tips)
                                ],
                            ),
                        ),
                        Container(height: 1, color: ColorBuilder.getFirstColor(),)
                    ],
                ),
            )

        );
    }

    static Container getAppTipsButton(BuildContext context, Function tips) {
        return Container(
            height: SizeGetter.getAppBarHeight(context),
            width: SizeGetter.getAppBarExternalIconWidth(context),
            child: IconButton(
                icon: Icon(
                    Icons.help,
                    size: SizeGetter.getAppBarIconWidth(context),
                    color: ColorBuilder.getFirstColor(),
                ),
                onPressed: () {
                    tips(context);
                },
            )
        );
    }

    static Container getAppIconButton(BuildContext context) {
        return Container(
            height: SizeGetter.getAppBarExternalIconWidth(context),
            width: SizeGetter.getAppBarExternalIconWidth(context),
            child: IconButton(
                iconSize: SizeGetter.getAppBarIconWidth(context),
                icon: Icon(
                    Icons.arrow_back,
                    color: ColorBuilder.getFirstColor(),
                ),
                onPressed: () {
                    Navigator.pop(context);
                },
            )
        );
    }

    static Container getAppBarText(BuildContext context, String text) {
        return Container(
            alignment: Alignment(0,0),
            height: SizeGetter.getAppBarHeight(context),
            width: SizeGetter.getAppBarTextWidth(context),
            child: ListTile(
                title: AutoSizeText(
                    text,
                    maxLines: 5,
                    style: TextStyle(
                        color: ColorBuilder.getFirstColor(),
                        fontSize: SizeGetter.getNormalTextSize(context),
                    ),
                ),
            )
        );
    }

}