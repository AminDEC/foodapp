import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/models/clipper.dart';
import 'package:food/models/models.dart';

class SubFoodPage extends StatefulWidget {
  final SubFood subfoods;

  SubFoodPage({this.subfoods});

  @override
  _SubFoodPageState createState() => _SubFoodPageState();
}

class _SubFoodPageState extends State<SubFoodPage> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  right: size.width / 10,
                  child: Container(
                    width: size.width / 1.2,
                    height: size.height / 1.5,
                    color: Colors.white10,
                    child: ListView(
                      children: <Widget>[
                        SizedBox(height: size.height / 15),
                        Text(
                          widget.subfoods.name,
                          style: TextStyle(
                              fontSize: size.height / 33,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        Text(
                          " Rating : ${_bulidStar(widget.subfoods.rating)}",
                          style: TextStyle(fontSize: size.height / 45),
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        Text(
                          " Price : \$${widget.subfoods.price}",
                          style: TextStyle(fontSize: size.height / 45),
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        Text(
                          "Description :",
                          style: TextStyle(fontSize: size.height / 45),
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        Text(
                          widget.subfoods.sdescription,
                          style: TextStyle(fontSize: size.height / 45),
                          softWrap: true,
                        ),
                        Text(
                          widget.subfoods.sdescription,
                          style: TextStyle(fontSize: size.height / 45),
                          softWrap: true,
                        ),
                        Text(
                          widget.subfoods.sdescription,
                          style: TextStyle(fontSize: size.height / 45),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                ClipPath(
                  clipper: Cliper(),
                  child: Container(
                    width: size.width,
                    height: size.height / 2.3,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          spreadRadius: 15,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      widget.subfoods.imageurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height / 27,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: size.width / 7,
                      height: size.height / 15,
                      //color: Colors.green,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: size.height / 30,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height / 3,
                  right: size.width / 9,
                  child: Container(
                    width: size.width / 6,
                    height: size.height / 13,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius:
                          BorderRadius.all(Radius.circular(size.height)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          spreadRadius: 5,
                        )
                      ],
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: size.height / 25,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
