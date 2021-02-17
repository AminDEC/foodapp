import 'package:flutter/cupertino.dart';

class SizeConf {
  static double _maxheight;
  static double _Maxwidth;
  static double _blocksizeVertical = 0.0;
  static double _blocksizehorizental = 0.0;

  static double SizeV;
  static double SizeH;
  static double textS;
  static double size;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _maxheight = constraints.maxHeight;
      _Maxwidth = constraints.maxWidth;
    } else if (orientation == Orientation.landscape) {
      _maxheight = constraints.maxWidth;
      _Maxwidth = constraints.maxHeight;
    }
    _blocksizehorizental = _Maxwidth / 200;
    _blocksizeVertical = _maxheight / 200;

    SizeH = _blocksizehorizental;
    SizeV = _blocksizeVertical;
    textS = _blocksizeVertical;
    size = _maxheight * 0.3;
  }
}

class Des {
  static String sea =
      "Seafood is any form of sea life regarded as food by humans, prominently including fish and shellfish. Shellfish include various species of molluscs (e.g. bivalve molluscs such as clams, oysters, and mussels and cephalopods such as octopus and squid), crustaceans (e.g. shrimp, crabs, and lobster), and echinoderms (e.g. sea cucumbers and sea urchins). ";
  static const String fastfood =
      "Fast food is a type of mass-produced food designed for commercial resale and with a strong priority placed on speed of service versus other relevant factors involved in culinary science.  ";
  static const String drink =
      "A drink (or beverage) is a liquid intended for human consumption. In addition to their basic function of satisfying thirst, drinks play important roles in human culture. Common types of drinks include plain drinking water, milk, coffee, tea, hot chocolate, juice and soft drinks.";
  static const String spagheti =
      "Spaghetti  is a long, thin, solid, cylindrical noodle pasta.[1] It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina.[2] ";
  static const String deser =
      "Dessert  is a course that concludes a meal. The course usually consists of sweet foods, such as confections, and possibly a beverage such as dessert wine or liqueur. In some parts of the world, such as much of central and western Africa, and most parts of China and India, there is no tradition of a dessert course to conclude a meal. ";
}
