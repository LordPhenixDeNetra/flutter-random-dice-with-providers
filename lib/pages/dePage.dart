// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/deProvider.dart';
import '../widgets/printImage.dart';
import '../widgets/roolButton.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
        create: (context) => DeProvider(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "RANDOM",
              style: TextStyle(
                fontSize: 26,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 238, 49, 90),
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/bg_2.jpg"),
              fit: BoxFit.cover,
            )),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 0.0,
                  top: 0.0,
                  right: 0.0,
                  bottom: 80,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer<DeProvider>(
                      builder: (context, deProvider, child) => PrintImage(
                          imageUrl: "images/${deProvider.randomImageLeft}.png"),
                    ),
                    Consumer<DeProvider>(
                      builder: (context, deProvider, child) => PrintImage(
                          imageUrl:
                              "images/${deProvider.randomImageRight}.png"),
                    ),
                  ],
                ),
              ),

              // SizedBox(height : 20),

              RollButton(action: "roll"),
            ]),
          ),
        ));
  }
}















/*

ElevatedButton(
              onPressed: () {
                var random = Provider.of<DeProvider>(context, listen: false);

                random.getRandomImage();
                
              },
              child: Text("ROLL"),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(200, 50)),
              ),
            ),

*/
