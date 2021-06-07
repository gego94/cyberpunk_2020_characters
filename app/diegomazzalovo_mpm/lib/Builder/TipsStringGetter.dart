
import '../custom_widgets.dart';

class TipsStringGetter {


    static TextStyle getTextStyle(BuildContext context) {
        return TextStyle(
            color: ColorBuilder.getFirstTextWhite(),
            fontSize: SizeGetter.getSmallTextSize(context)
        );
    }

    static String getDicesTipsString() {
        return
            "Supported notation:\n\n" +
                " - AdX : roll A dice of X sides, total will be returned as value\n\n" +
                " - Special dice variations:\n\n" +
                " -- AdF : roll A fudge dice (sides: [-1, -1, 0, 0, 1, 1])\n\n" +
                " -- Ad% : roll A percentile dice (equivalent to 1d100)\n\n" +
                " -- AD66 : roll A D66, aka 1d6*10 + 1d6 (NOTE: this must use uppercase D, lowercase d will be interpreted as 66-sided die)\n\n" +
                " -- exploding dice\n\n" +
                " --- Ad!X : roll A X-sided dice, explode if max is rolled (re-roll and include in results)\n\n" +
                " ---- the dice roller won't explode dice more than 1000 times.\n\n" +
                " --- Ad!!X : roll A X-sided dice, explode only once (limited explosion)\n\n" +
                " - modifying the roll results:\n\n" +
                " -- dropping dice:\n\n" +
                " --- AdX-HN : roll A X-sided dice, drop N highest\n\n" +
                " --- AdX-LN : roll A X-sided dice, drop N lowest\n\n" +
                " --- AdX->B : roll A X-sided dice, drop any results less than B\n\n" +
                " --- AdX-<B : roll A X-sided dice, drop any results greater than B\n\n" +
                " --- AdX-=B : roll A X-sided dice, drop any results equal to B\n\n" +
                " --- NOTE: the drop operators have higher precedence than the arithmetic operators, so 4d10-L2+2 is equivalent to (4d10-L2)+2\n\n" +
                " -- cap/clamp:\n\n" +
                " --- AdXC<B : roll A X-sided dice, change any value less than B to B\n\n" +
                " --- AdXC>B : roll A X-sided dice, change any value greater than B to B\n\n" +
                " - operations on dice rolls:\n\n" +
                " -- counting:\n\n" +
                " --- AdX# : how many are in the results? (useful for 20d10-<2->8# -- roll 20 d10, drop <2 and >8, how many are left?)\n\n" +
                " --- AdX#>B : roll A X-sided dice, count any greater than B\n\n" +
                " --- AdX#<B : roll A X-sided dice, count any less than B\n\n" +
                " --- AdX#=B : roll A X-sided dice, count any equal to B\n\n" +
                " - addition/subtraction/multiplication and parenthesis are allowed\n\n" +
                " - numbers must be integers, and division is is not supported.\n\n" +
                " Examples #\n\n" +
                " - 2d6 + 1 : roll two six-sided dice, sum results and add one\n\n" +
                " - 2d(2*10) + 3d100 : roll 2 twenty-sided dice, sum results, add that to sum of 3 100-sided die\n\n" +
                " - 1D66 : roll a D66 aka two six-sided dice, multiply first by 10 and sum results\n\n" +
                " - 1d% : roll one percentile dice\n\n" +
                " - 4dF : roll four fudge dice\n\n" +
                " - 2d20-H : roll 2d20, drop highest (disadvantage)\n\n" +
                " - 2d20-L : roll 2d20, drop lowest (advantage)\n\n" +
                " - 10d10-L3 : roll 10d10, drop 3 lowest results\n\n" +
                " - (2d10+3d20)-L3 : roll 2d10 and 3d20, combine the two results lists and drop lowest 3 rolls\n\n" +
                " - 20d10-<3->8# : roll 20 d10, drop any less than 3 or greater than 8 and count the number of remaining dice\n\n";
    }

    static String getRulesTipsString() {
        return
            "The Rules Compendium section is organized like the book for sections and subsections.\n"+
                "You can click on an element's name to open that section or the description.\n"+
                "At every time you can use the search bar to find what you need in the book. Results will be displayed instead of the complete book as a list of elements that you can click to show their description. Each of these elements, has the name of the section and in brackets the name of the subsection where you search is. The text you are searching for will be yellow highlited.";

    }

    static Column getCharsRouteTipsString(BuildContext context) {
        return Column(
            children: <Widget>[
                Text("This section contains your personal characters. They are shown as a list of names that you can click to enter that character\'s sheet.", style: TipsStringGetter.getTextStyle(context)),
                BuildButtonNoAnimation.getButton(() => "", circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), icon: FontAwesomeIcons.times,
                    iconColor: Colors.white, bgColor: ColorBuilder.getErrorColor(), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
                Text("Click on the button above to delete a character. This will open a window that will ask you if you are sure to delete. Press on YES to delete the character(the action is irreversible) or NO to not delete it.", style: TipsStringGetter.getTextStyle(context)),
                BuildButtonNoAnimation.getButton(() => "", circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), icon: FontAwesomeIcons.plus,
                    iconColor: Colors.white, bgColor: ColorBuilder.getFirstColorAlternative(), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
                Text("Click on the button above(positioned in the bottom right corner) to add a new character. This will add a window that will ask you to write character's name(empty name is not valid), select character's class and then press the OK button to definitively add the character to your characters. If you don't want to add the character, just click outside the window and it will close itself. Then you will return to characters' list with the new character added. New characters are empty, so you need to compile all stats, items, ...", style: TipsStringGetter.getTextStyle(context))
            ]
        );
    }

    static Column getCharacterRouteTipsString(BuildContext context) {
        return Column(
            children: <Widget>[
                Text("This section contains the character sheet of the character you selected in previous screen.\nHere you find all your character's stats, skills, items and background. You can modify everything and keep up to date your character.\n\nYou can modify your character's stats by selecting a new value from the field under each one in stats section, and the value will be updated.\n\nIn the \"Other Stats\" section you can find secondary stats deriving from first automated calculated or editing some other secondary stats(reputation, current IP, humanity).\n\nIn \"Life and Armor\" section you can keep up to date damages on your character, which will also modify stun save automatically. Here you can also add SP values for your armors by selecting a value as for stats.\n\nIn \"Skills\" section you   find all skills that you can update value for divided as in the manual.\n\nIn \"Items\" section you can view all items your character has by clicking on the subsection relative to the category of items you want to see and update the quantity of that item your character has. If you click on an item's name, you will see its description.\n", style: TipsStringGetter.getTextStyle(context)),
                BuildButtonNoAnimation.getButton(() => {}, icon:FontAwesomeIcons.minus, bgColor: ColorBuilder.getErrorColor(),
                    circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
                Text("\nBy clicking on the bottom above, you can delete one item from your items. A window that will ask if you are sure to delete will appear. If you click on the \"YES\" button, the item will be deleted, otherwise you will return to prevoius window.\n", style: TipsStringGetter.getTextStyle(context)),
                BuildButtonNoAnimation.getButton(() => {}, boxShape: BoxShape.rectangle, icon:FontAwesomeIcons.plus, bgColor: ColorBuilder.getFirstColorAlternative(),
                    circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
                Text("\nBy clicking on above button, near an item's category name, you can add a new item of that category(you will be redirected to the screen to add a new item.).\n\nIn the \"Background\" section, you can find yor character's background, that you can edit manually if you want. As you create a new character, the background isn't present, but you can create a new one by clickng on the \"Generate new Background\" button in the end of the screen, which will create a new background randomly, that you can modify manually to personalize it as you want.\n\n", style: TipsStringGetter.getTextStyle(context))
            ]
        );
    }

    static Column getAddItemRouteTipsString(BuildContext context) {
        return Column(
            children: <Widget>[
                Text("In this section you can add a new item to your character's items, of the category you selected previously.\nHere is the list of all that category's items, alphabetically ordered. By clicking on an item's name, you can see the description of that item.\n", style: TipsStringGetter.getTextStyle(context)),
                BuildButtonNoAnimation.getButton(() => {}, boxShape:  BoxShape.rectangle, icon:FontAwesomeIcons.arrowAltCircleDown, bgColor: ColorBuilder.getFirstColorAlternative(),
                    circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
                Text("\nBy clicking on the button above positioned on the left of an item's name, that item will be added to your character's items and you can find it in your character's items. By default, it will be added with quantity 1.", style: TipsStringGetter.getTextStyle(context))
            ]
        );
    }

    static Column getHomePageTipsString(BuildContext context) {
        return Column(
            children: <Widget>[
                Text("Welcome to the new Cyberpunk 2020 character & rules manage app. Here you can manage your characters as if you have their sheets. Moreover, you can search the manual for everything you need!\n", style: TipsStringGetter.getTextStyle(context)),
                BuildButtonNoAnimation.getButton(() => {}, icon: Icons.help, bgColor: ColorBuilder.getSecondBackgroundColor(), iconColor: ColorBuilder.getFirstColor(),
                    circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)*2),
                Text("\nIn each section you can find the button above(positioned in the top-right corner), that will open a window where you can read how to use that section.\n", style: TipsStringGetter.getTextStyle(context)),
                BuildButtonNoAnimation.getButton(() => {}, icon: Icons.arrow_back, bgColor: ColorBuilder.getSecondBackgroundColor(), iconColor: ColorBuilder.getFirstColor(),
                    circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)*2),
                Text("\nMoreover, also in each section, by clicking the botton above(situated in the top-left corner), you will go back to previous screen.\n"
                    "\nYou can click on the \"Rules\" button to enter the Rules section of the app, where you can consult the Rules Compendium.\n"
                    "\nYou can click on the \"Dices\" button to enter the Dice Roller section, where you can roll dices to play the game.\n"
                    "\nYou can click the \"Characters\" button, to enter in the characters' section, where you can manage your characters.\n"
                    "\nFinally, you can drag the screen from left to right, to open the menu in every screen.\n"
                    , style: TipsStringGetter.getTextStyle(context)),

            ]
        );
    }
}

/*
BuildButtonNoAnimation.getButton(() => {}, icon:FontAwesomeIcons.cogs, bgColor: ColorBuilder.getFirstColor(),
circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
Text("\nClick on the cogs button(the image above) in the middle of the screen to open the menù.\n", style: TipsStringGetter.ts),
BuildButtonNoAnimation.getButton(() => {}, icon:FontAwesomeIcons.usersCog, bgColor: ColorBuilder.getFirstColor(),
circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
Text("\nThe button above let you enter the characters section, where you can create new characters and modify the ones already existing.\n", style: TipsStringGetter.ts),
BuildButtonNoAnimation.getButton(() => {}, icon:FontAwesomeIcons.bookOpen, bgColor: ColorBuilder.getFirstColor(),
circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
Text("\nBy clicking the button above you will enter the \"Rules Compendium\" section, where you can search the game manual for rules.\n", style: TipsStringGetter.ts),
BuildButtonNoAnimation.getButton(() => {}, icon:FontAwesomeIcons.diceD20, bgColor: ColorBuilder.getFirstColor(),
circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
Text("\nThe button above let you enter the \"Dice Roller\" section, where you can roll your dice to play the game.\n", style: TipsStringGetter.ts),
BuildButtonNoAnimation.getButton(() => {}, icon:FontAwesomeIcons.timesCircle, bgColor: ColorBuilder.getFirstColor(),
circleDim: SizeGetter.getInternalTipsButtonCircleDimSize(context), iconSize: SizeGetter.getInternalTipsButtonIconSize(context)),
Text("\nLast button will close the menu.", style: TipsStringGetter.ts)*/