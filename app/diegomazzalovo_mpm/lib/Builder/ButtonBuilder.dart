import '../custom_widgets.dart';

class GenerateHomeButtons {

  // metodo statico per creare i bottoni della homepage
  static Container getHomeButton(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.only(
          top: SizeGetter.getItemDescriptionPadding(context)),
      width: SizeGetter.getFullWidth(context),
      height: SizeGetter.getHomeButtonHeight(context),
      child: FloatingActionButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorBuilder.getFirstTextWhite())
        ),
        heroTag: "${text}Button",
        backgroundColor: ColorBuilder.getFirstColorAlternative(),
        child: Text(text,
          style: TextStyle(fontSize: SizeGetter.getNormalTextSize(context)),),
        onPressed: () {
          Navigator.pushNamed(context, "/${text}");
        },
      ),
    );
  }
}

class BuildButtonNoAnimation {

  // metodo per creare dei bottoni generici passati i parametri
  static Container getButton(Function onPress, {BoxShape boxShape = BoxShape.circle, IconData icon = FontAwesomeIcons.cogs, var bgColor = "", Color iconColor = Colors.white,
                  double circleDim = 0, double iconSize = 0, var par1 = "", var par2 = ""}) {
    if(bgColor == "") bgColor = ColorBuilder.getFirstColor();
    return Container(
      width: circleDim,
      height: circleDim,
      decoration: BoxDecoration(
        color: bgColor,
        shape: boxShape,
      ),
      child: RawMaterialButton(
          child: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
          onPressed: () async {
            if(par1 != "" && par2 != "")
              onPress(par1, par2);
            else if(par1 != "")
              onPress(par1);
            else
              onPress();
            }
      ),
    );
  }
}
