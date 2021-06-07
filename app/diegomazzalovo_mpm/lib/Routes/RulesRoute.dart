import '../custom_widgets.dart';
import '../custom_expansion_tile.dart' as custom;



class RulesRouteState extends State<RulesRoute> {
  FileReader _fileReader;
  TextEditingController editingController = TextEditingController();
  var _listViewElements, _duplicatedListViewElements;

  @override
  void initState() {
    _fileReader = FileReader();
    _listViewElements =  _fileReader.createFromJson(context, "assets/rules.json", "Rules Compendium");
    _duplicatedListViewElements = _fileReader.createFromJson(context, "assets/rules.json", "Rules Compendium");
    super.initState();
  }

  Padding _getSearchBar() {
    return Padding(
      padding: EdgeInsets.all(SizeGetter.getMiniPadding(context)),
      child: new Theme(
        data: new ThemeData(
            hintColor: ColorBuilder.getFirstColor()
        ),
        child: TextField(
          onChanged: (value) {
            _filterSearchResults(value);
          },
          style: TextStyle(color: ColorBuilder.getFirstColor(), fontSize: SizeGetter.getMediumTextSize(context)),
          controller: editingController,
          decoration: InputDecoration(
              labelText: "Search",
              labelStyle: TextStyle(fontSize: SizeGetter.getMediumTextSize(context), color: ColorBuilder.getFirstColor()),
              hintText: "Type your Search...",
              hintStyle: TextStyle(fontSize: SizeGetter.getMediumTextSize(context)),
              prefixIcon: Icon(Icons.search, color: ColorBuilder.getFirstColor(), size: SizeGetter.getMediumTextSize(context)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorBuilder.getFirstColor(), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ColorBuilder.getFirstColor(), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              border: OutlineInputBorder(
                  borderSide: new BorderSide(color: ColorBuilder.getFirstColor()),
                  borderRadius: BorderRadius.all(Radius.circular(25.0)))
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerBuilder.get(context),
        backgroundColor: ColorBuilder.getBackgroundColor(),
        appBar: AppBarBuilder.getAppBar(context, "Rules Compendium", tips: TipsBuilder.getRulesTips),
        body: SafeArea(
          child: Container(
              child: Column(
                  children: <Widget>[
                    _getSearchBar(),
                    Expanded(
                        child: _listViewElements
                    )
                  ]
              )
          ),
        )


    );
  }

  void _filterSearchResults(String query) {
    query = query.trim().toLowerCase();
    List<custom.ExpansionTile> dummySearchList = new List<custom.ExpansionTile>();
    if(query.isNotEmpty) {
      for(List<String> rulesSmallestSection in _fileReader.getListForSearchBar())
        if (rulesSmallestSection[0].trim().toLowerCase().contains(query) ||
            rulesSmallestSection[1].trim().toLowerCase().contains(query))
          dummySearchList.add(CustomExpansionTileBuilder.getCustomExpansionTile(
              RichText(
                text: TextSpan(
                  children: _highlightOccurrences(rulesSmallestSection[0], query),
                  style: TextStyle(color: ColorBuilder.getFirstTextWhite(), fontSize: SizeGetter.getMediumTextSize(context)),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: _highlightOccurrences(rulesSmallestSection[1], query),
                  style: TextStyle(color: ColorBuilder.getFirstTextWhite(), fontSize: SizeGetter.getSmallTextSize(context)),
                ),
              )));
      setState(() {
        if(dummySearchList.length != 0) {
          _listViewElements = ListView.builder(
            itemCount: dummySearchList.length,
            itemBuilder: (context, index) {
              return dummySearchList[index];
            },
          );
        }
        else {
          _listViewElements = Text(
            'No results found.',
            style: TextStyle(
              color: ColorBuilder.getErrorColor(),
              fontSize: SizeGetter.getNormalTextSize(context),
            ),
          );
        }
      });
    } else {
      setState(() { _listViewElements = _duplicatedListViewElements;});
    }
  }

  List<TextSpan> _highlightOccurrences(String source, String query) {
    if (query == null || query.isEmpty)
      return [TextSpan(text: source)];

    List<Match> matches = <Match>[];
    for (final token in query.trim().toLowerCase().split(' '))
      matches.addAll(token.allMatches(source.toLowerCase()));

    if (matches.isEmpty)
      return [TextSpan(text: source)];
    matches.sort((a, b) => a.start.compareTo(b.start));

    int lastMatchEnd = 0;
    final List<TextSpan> children = [];
    for (final match in matches) {
      if (match.end <= lastMatchEnd) {
        // already matched -> ignore
      } else if (match.start <= lastMatchEnd) {
        children.add(TextSpan(
          text: source.substring(lastMatchEnd, match.end),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellowAccent),
        ));
      } else if (match.start > lastMatchEnd) {
        children.add(TextSpan(
          text: source.substring(lastMatchEnd, match.start),
        ));
        children.add(TextSpan(
          text: source.substring(match.start, match.end),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.yellowAccent),
        ));
      }
      if (lastMatchEnd < match.end)
        lastMatchEnd = match.end;
    }
    if (lastMatchEnd < source.length) {
      children.add(TextSpan(
        text: source.substring(lastMatchEnd, source.length),
      ));
    }
    return children;
  }

}


class RulesRoute extends StatefulWidget{

  RulesRoute({Key key, this.title}) : super(key: key);
  final String title;

  @override
  RulesRouteState createState() => new RulesRouteState();

}
