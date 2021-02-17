import 'package:flutter/material.dart';
import 'package:food/Screens/subfood.dart';
import 'package:food/models/models.dart';

class SecondScreen extends StatefulWidget {
  final Food foods;

  SecondScreen({this.foods});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String _bulidStar(int rating) {
    String stars = "";
    for (int i = 0; i < rating; i++) {
      stars += "⭐";
    }
    stars.trim();
    return "${stars}";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white60,
          floating: false,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: size.height / 30,
            ),
          ),
          actions: <Widget>[
            // Icon(
            //   Icons.account_circle,
            //   color: Colors.white,
            //   size: size.height / 20,
            // )
          ],
          expandedHeight: size.height * 0.4,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              widget.foods.imageurl,
              fit: BoxFit.cover,
            ),
            centerTitle: true,
            title: Text(
              widget.foods.name,
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.none),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index1) {
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => SubFoodPage(
                              subfoods: widget.foods.subfood[index1],
                            ))),
                child: Container(
                  height: size.height / 2.5,
                  color: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: (index1 % 2) * (size.width - (size.width / 5)),
                        bottom: size.height / 20,
                        child: Container(
                          width: size.width / 5,
                          height: size.height / 2.6,
                          color: Colors.white,
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Center(
                                child: Text(
                              widget.foods.subfood[index1].name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width / 14,
                                  decoration: TextDecoration.none),
                            )),
                          ),
                        ),
                      ),
                      Positioned(
                        right:
                            (index1 % 2) * (size.width - (size.width / 1.3)) +
                                size.width / 50,
                        top: size.height / 94,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Container(
                                height: size.height / 3.1,
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
                                      widget.foods.subfood[index1].imageurl,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: size.height / 100,
                        left: size.width / 20,
                        child: Container(
                          width: size.width / 2,
                          height: size.height / 20,
                          //color: Colors.white,
                          child: Center(
                            child: Text(
                              "rating : ${_bulidStar(widget.foods.subfood[index1].rating)}",
                              style: TextStyle(
                                  fontSize: size.height / 50,
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: size.height / 100,
                        right: size.width / 50,
                        child: Container(
                          width: size.width / 2,
                          height: size.height / 20,
                          //color: Colors.white,
                          child: Center(
                            child: Text(
                              "price : \$${widget.foods.subfood[index1].price}",
                              style: TextStyle(
                                  fontSize: size.height / 50,
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: widget.foods.subfood.length,
          ),
        ),
      ],
    );
  }
}
