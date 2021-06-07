import '../custom_widgets.dart';
import 'package:flutter/material.dart';
import '../custom_expansion_tile.dart' as custom;



class ItemsRouteState extends State<ItemsRoute> {
  static final FileReader _f = FileReader();
  TextEditingController editingController = TextEditingController();
  var _elements, _duplicatedElements;

  @override
  void initState() {
    _elements =  _f.createFromJson(context, "assets/items.json", "Items");
    _duplicatedElements = _f.createFromJson(context, "assets/rules.json", "Items");
    super.initState();
  }

  filterSearchResults(String query) {
    query = query.trim().toLowerCase();
    List<custom.ExpansionTile> dummySearchList = List<custom.ExpansionTile>();
    List l;
    if(query.isNotEmpty) {
      l = _f.getL();
      for(var item in l)
        if (item[0].trim().toLowerCase().contains(query) ||
            item[1].trim().toLowerCase().contains(query))
          dummySearchList.add(getCustomExpansionTile(
              RichText(
                text: TextSpan(
                  children: highlightOccurrences(item[0], query),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: highlightOccurrences(item[1], query),
                  style: TextStyle(color: Colors.white),
                ),
              )));
      setState(() {
        if(dummySearchList.length != 0) {
          _elements = ListView.builder(
            itemCount: dummySearchList.length,
            itemBuilder: (context, index) {
              return dummySearchList[index];
            },
          );
          return;
        }
        else {
          _elements = Text(
            'No results found.',
            style: TextStyle(
              color: Colors.red,
              fontSize:30,
            ),
          );
          return;
        }
      });
    } else {
      setState(() {
        _elements = _duplicatedElements;
        return;
      });
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom: PreferredSize(child: Container(color: Colors.red, height: 1.0)),
          title: Text(
            'Rules Compendium ',
            style: TextStyle(
              color: Colors.red,
              fontSize:20,
            ),
          ),
        ),
        body: Container(
            child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Theme(
                      data: new ThemeData(
                          hintColor: Colors.blue
                      ),
                      child: TextField(
                        onChanged: (value) {
                          filterSearchResults(value);
                        },
                        style: new TextStyle(color: Colors.blue),
                        controller: editingController,
                        decoration: InputDecoration(
                            labelText: "Search",
                            hintText: "Type your Search...",
                            prefixIcon: Icon(Icons.search, color: Colors.blue),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                            ),
                            border: OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.teal),
                                borderRadius: BorderRadius.all(Radius.circular(25.0)))
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child:
                      _elements
                  )
                ]
            ))
    );

  }

}


class ItemsRoute extends StatefulWidget{

  ItemsRoute({Key key, this.title}) : super(key: key);
  final String title;

  @override
  ItemsRouteState createState() => new ItemsRouteState();

}
