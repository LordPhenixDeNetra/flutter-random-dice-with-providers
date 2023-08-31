import 'dart:math';

import 'package:flutter/foundation.dart';

class DeProvider extends ChangeNotifier {

  int randomImageLeft = Random().nextInt(5) + 1;
  int randomImageRight = Random().nextInt(5) + 1;

  void getRandomImage() {

    // var random = Random();

    randomImageLeft = Random().nextInt(5) + 1;
    randomImageRight = Random().nextInt(5) + 1;
    notifyListeners();
  }
}
