import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/deProvider.dart';

class RollButton extends StatelessWidget {
  final action;

  RollButton({required this.action});

  @override
  Widget build(BuildContext context) {
    var randomizImage = Provider.of<DeProvider>(context, listen: false);
    // TODO: implement build
    return ElevatedButton(
      
      onPressed: () {
        if (action == "roll") {
          randomizImage.getRandomImage();
        } else {}
      },
      child: Text("ROLL", style : TextStyle(fontSize : 30)),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(230, 70)),
        elevation : MaterialStateProperty.all(10),
        backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 238, 49, 90))
        
      ),
    );
  }
}
