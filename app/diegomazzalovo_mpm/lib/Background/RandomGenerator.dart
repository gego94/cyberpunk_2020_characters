
import '../custom_widgets.dart';


class RandomGenerator {

  Random random;

  RandomGenerator():
    random = new Random();

  int getRandom(int range) {
    return random.nextInt(range);
  }
}