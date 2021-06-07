import '../custom_widgets.dart';

class ColorBuilder {
    static Color getBackgroundColor() {
        return Color(0xff121212);
    }

    static Color getFirstColor() {
        return const Color(0xFFBB86FC);
    }

    static Color getFirstColorAlternative() {
        return const Color(0xFF3700b3).withOpacity(0.7);
    }

    static Color getAppBarColor() {
        return const Color(0xFF1f1f1f);
    }

    static Color getSecondBackgroundColor() {
        return const Color(0xFF1e1e1e);
    }

    static Color getFirstTextWhite() {
        return const Color(0xFFFFFFFF).withOpacity(0.87);
    }

    static Color getSecondTextWhite() {
        return const Color(0xFFFFFFFF).withOpacity(0.60);
    }
    static Color getErrorColor() {
        return const Color(0xFFcf6679);
    }

}