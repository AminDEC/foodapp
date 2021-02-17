import 'package:flutter/material.dart';
import 'package:food/Screens/secondScreen.dart';
import 'package:food/models/models.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white60,
          floating: false,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
            size: size.height / 30,
          ),
          actions: <Widget>[],
          expandedHeight: size.height * 0.3,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/images/sliverappbar.jpg",
              fit: BoxFit.cover,
            ),
            centerTitle: true,
            title: Text(
              "Welcome to Food app",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              Food food = foods[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SecondScreen(
                      foods: food,
                    ),
                  ),
                ),
                child: Container(
                  height: size.height / 2.5,
                  color: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: (index % 2) * (size.width - (size.width / 5)),
                        bottom: 0,
                        child: Container(
                          width: size.width / 5,
                          height: size.height / 2.6,
                          color: Colors.white,
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Center(
                                child: Text(
                              food.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width / 10,
                                  decoration: TextDecoration.none),
                            )),
                          ),
                        ),
                      ),
                      Positioned(
                        right: (index % 2) * (size.width - (size.width / 1.3)) +
                            size.width / 50,
                        bottom: size.height / 94,
                        child: Container(
                          height: size.height / 2.6,
                          width: size.width / 1.4,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(size.height / 10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5,
                                  spreadRadius: 5,
                                ),
                              ]),
                          child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(size.height / 10)),
                              child: Image.asset(
                                food.imageurl,
                                fit: BoxFit.cover,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            childCount: foods.length,
          ),
        ),
      ],
    );
  }
}
