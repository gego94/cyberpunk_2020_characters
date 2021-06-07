import '../custom_widgets.dart';
import 'dart:ui';

class HomePage extends StatelessWidget {

    Future<void> _writeRules(String rules) async {
        Directory dir = await getApplicationDocumentsDirectory();
        String path = dir.path;
        File f = File('$path/rules.json');
        f.writeAsStringSync(json.encode(json.decode(rules.toString())));
    }

    Future<void> _loadRules(BuildContext context) async {
        try {
            Directory dir = await getApplicationDocumentsDirectory();
            String path = dir.path;
            File f = File('$path/rules.json');
            json.decode(f.readAsStringSync());
        }
        on FileSystemException {
            String r = await DefaultAssetBundle.of(context).loadString("assets/rules.json");
            _writeRules(r);
        }
    }

    Future<void> _showTips(BuildContext context) async {
        String path;
        File f;
        try{
            Directory dir = await getApplicationDocumentsDirectory();
            path = dir.path;
            f = File('$path/showTips.txt');
            f.readAsStringSync();
        }
        on FileSystemException {
            TipsBuilder.getHomePageTips(context);
            f.writeAsStringSync("1".toString());
        }
    }





    @override
    Widget build(BuildContext context) {
        _loadRules(context);
        _showTips(context);
        return Scaffold(
            drawer: DrawerBuilder.get(context),
              backgroundColor: ColorBuilder.getBackgroundColor(),
              body:  Container(
                padding: EdgeInsets.all(SizeGetter.getMiniPadding(context)),
                child: Column(
                    children: <Widget>[
                        Container(
                            width: SizeGetter.getFullWidth(context),
                            height: SizeGetter.getDiceTextFieldheight(context),
                            child: FittedBox(
                                child: Image.asset('assets/homeimg.jpg'),
                                fit: BoxFit.fill,
                            )
                        ),
                        Text(
                            'Characters & rules manager',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                color: ColorBuilder.getFirstColor(),
                                fontSize: SizeGetter.getMediumTextSize(context),
                            )
                        ),
                        Container(
                            alignment: Alignment.centerRight,
                            child: AppBarBuilder.getAppTipsButton(context, TipsBuilder.getHomePageTips),
                        ),
                        GenerateHomeButtons.getHomeButton(context, "Rules"),
                        GenerateHomeButtons.getHomeButton(context, "Dices"),
                        GenerateHomeButtons.getHomeButton(context, "Characters"),

                    ],
                )

              )
          );
      }
}