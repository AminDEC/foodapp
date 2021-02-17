import 'package:flutter/material.dart';
import 'package:food/Screens/start.dart';

void main() {
  runApp(LayoutBuilder(
    builder: (context, constrains) {
      return OrientationBuilder(
        builder: (context, orientation) {
          return new MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              backgroundColor: Colors.white70,
              primaryColor: Colors.white,
              shadowColor: Colors.black26,
            ),
            home: FirstScreen(),
          );
        },
      );
    },
  ));
}
