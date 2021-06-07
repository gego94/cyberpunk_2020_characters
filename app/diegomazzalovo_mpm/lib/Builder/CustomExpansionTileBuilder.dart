
import 'package:diegomazzalovo_mpm/custom_widgets.dart';
import 'package:diegomazzalovo_mpm/custom_expansion_tile.dart' as custom;

class CustomExpansionTileBuilder {

    static custom.ExpansionTile getCustomExpansionTile(var title, var subTitle, {double padding = 0, double size=10, FontStyle style=FontStyle.italic, Color color = Colors.white}) {
        if(title is String && subTitle is String) {
            return custom.ExpansionTile(
                headerBackgroundColor: ColorBuilder.getSecondBackgroundColor(),
                iconColor: ColorBuilder.getFirstTextWhite(),
                title: Padding(
                    padding: EdgeInsets.only(left: padding),
                    child: Text(title,style: TextStyle(color:color, fontSize: size))
                ),
                children: [Padding(
                    padding: EdgeInsets.only(left: padding+10),
                    child:ListTile(title:Text(subTitle,style: TextStyle(color: ColorBuilder.getFirstTextWhite(), fontSize: size-2)))
                )],
            );
        }
        return custom.ExpansionTile(
            headerBackgroundColor: ColorBuilder.getSecondBackgroundColor(),
            iconColor: Colors.white,
            title: title,
            children: [
                Padding(
                    padding: EdgeInsets.only(left: padding),
                    child: ListTile(title:subTitle)
                )
            ],
        );
    }
}