import 'custom_widgets.dart';

void main() => runApp(MyApp());

class MyAppState extends State<MyApp>  with WidgetsBindingObserver{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/Characters':
            return Router(widget:CharsRoute());
          case '/Dices':
            return Router(widget:DicesRoute());
          case '/Rules':
            return Router(widget:RulesRoute());
          default: return Router(widget:HomePage());
        }
      },
    );
  }
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if(state == AppLifecycleState.paused) {
      rl.writeLastRolled();
      charactersReaderGeneral.write(charactersReaderGeneral.jsonWithCharacters);
    }
  }

}


class MyApp extends StatefulWidget{

  MyApp({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MyAppState createState() => new MyAppState();

}