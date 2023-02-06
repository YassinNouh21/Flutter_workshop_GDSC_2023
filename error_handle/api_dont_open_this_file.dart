import 'dart:math';

class API {
  String getData() {
    Random random = Random();
    int randomNumber = 1 + random.nextInt(10);

    if (randomNumber > 6) {
      throw Exception("Error");
    }
    return "data";
  }
}
