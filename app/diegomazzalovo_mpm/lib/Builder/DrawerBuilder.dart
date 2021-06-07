import '../custom_widgets.dart';

class DrawerBuilder {

    static InkWell getMenuTile(String name, BuildContext context) {
        return InkWell(
            child: Container(
                width: SizeGetter.getFullWidth(context),
                height: SizeGetter.getHomeButtonHeight(context),
                decoration: BoxDecoration(
                    border: Border.all(color: ColorBuilder.getFirstTextWhite())
                ),
                child: Center(
                    child: Text(name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: ColorBuilder.getFirstTextWhite(),
                            fontSize: SizeGetter.getNormalTextSize(context),
                        )
                    )
                ),

            ),
            onTap: () {
                Navigator.pushNamed(context, "/${name}");
            },
        );
    }

    static Container get(BuildContext context) {
        return
        Container(
            width: SizeGetter.getFullWidth(context)/4*3,

            child:Drawer(
            child: Container(
                color: ColorBuilder.getBackgroundColor(),
                child: Column(
                    children: <Widget>[
                        DrawerHeader(
                            child: Container(
                                padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                                width: SizeGetter.getFullWidth(context)/4*3,
                                child:Text('Cyberpunk Menu',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        color: ColorBuilder.getFirstColor(),
                                        fontSize: SizeGetter.getMenuTextSize(context),
                                    )
                                )
                            ),
                            decoration: BoxDecoration(
                                color: ColorBuilder.getAppBarColor(),
                            ),
                        ),

                        getMenuTile("Rules", context),
                        Container(height: 4),
                        getMenuTile("Dices", context),
                        Container(height: 4),
                        getMenuTile("Characters", context)
                    ],
                ),
            )

        )
        );
    }

}
