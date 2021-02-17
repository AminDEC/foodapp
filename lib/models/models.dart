import 'package:food/models/constant.dart';

class Food {
  String imageurl;
  String name;
  List<SubFood> subfood;

  Food({
    this.imageurl,
    this.name,
    this.subfood,
  });
}

class SubFood {
  String name;
  String sdescription;
  int rating;
  String imageurl;
  int price;

  SubFood(
      {this.name, this.imageurl, this.rating, this.sdescription, this.price});
}

List<SubFood> SeaFood = [
  SubFood(
    name: "Boullabaisse",
    imageurl: "assets/images/Boullabaisse.jpg",
    sdescription: Des.sea,
    rating: 5,
    price: 33,
  ),
  SubFood(
    name: "CrispyFriedFish",
    imageurl: "assets/images/CrispyFriedFish.jpg",
    sdescription: Des.sea,
    rating: 5,
    price: 44,
  ),
  SubFood(
    name: "fish_finger",
    imageurl: "assets/images/fish_finger.jpg",
    sdescription: Des.sea,
    rating: 5,
    price: 66,
  ),
  SubFood(
    name: "FishAndChips",
    imageurl: "assets/images/FishAndChips.jpg",
    sdescription: Des.sea,
    rating: 5,
    price: 12,
  ),
  SubFood(
    name: "sushi",
    imageurl: "assets/images/sushi.jpg",
    sdescription: Des.sea,
    rating: 5,
    price: 23,
  ),
  SubFood(
    name: "Taramasalata",
    imageurl: "assets/images/Taramasalata.jpg",
    sdescription: Des.sea,
    rating: 5,
    price: 90,
  ),
]; // done
List<SubFood> FastFood = [
  SubFood(
    name: "FriedChickhen",
    imageurl: "assets/images/FriedChickhen1.jpg",
    sdescription: Des.fastfood,
    rating: 4,
    price: 12,
  ),
  SubFood(
    name: "Hamburger",
    imageurl: "assets/images/Hamburger.jpg",
    sdescription: Des.fastfood,
    rating: 3,
    price: 34,
  ),
  SubFood(
    name: "HotDog",
    imageurl: "assets/images/HotDog.jpg",
    sdescription: Des.fastfood,
    rating: 5,
    price: 12,
  ),
  SubFood(
    name: "Pizza",
    imageurl: "assets/images/pizza.jpg",
    sdescription: Des.fastfood,
    rating: 3,
    price: 11,
  ),
  SubFood(
    name: "Cheseburger",
    imageurl: "assets/images/cheseburger.jpg",
    sdescription: Des.fastfood,
    rating: 3,
    price: 12,
  ),
]; // done
List<SubFood> Deser = [
  SubFood(
    name: "Apple pie",
    imageurl: "assets/images/apple pie.jpg",
    sdescription: Des.deser,
    rating: 2,
    price: 12,
  ),
  SubFood(
    name: "fried-ice-cream",
    imageurl: "assets/images/fried-ice-cream.jpg",
    sdescription: Des.deser,
    rating: 3,
    price: 5,
  ),
  SubFood(
    name: "Salad Shirazi",
    imageurl: "assets/images/Salad Shirazi.jpg",
    sdescription: Des.deser,
    rating: 5,
    price: 2,
  ),
  SubFood(
    name: "Sweet potato pie",
    imageurl: "assets/images/sweet potato pie.jpg",
    sdescription: Des.deser,
    rating: 2,
    price: 10,
  ),
]; // done
List<SubFood> Drink = [
  SubFood(
    name: "Cafe Americano",
    imageurl: "assets/images/cafeamericano.jpg",
    sdescription: Des.drink,
    rating: 4,
    price: 10,
  ),
  SubFood(
    name: "Café late",
    imageurl: "assets/images/Café-late.jpg",
    sdescription: Des.drink,
    rating: 3,
    price: 1,
  ),
  SubFood(
    name: "Cappuccino",
    imageurl: "assets/images/Cappuccino.jpg",
    sdescription: Des.drink,
    rating: 3,
    price: 11,
  ),
  SubFood(
    name: "softdrink",
    imageurl: "assets/images/cola.jpg",
    sdescription: Des.drink,
    rating: 5,
    price: 10,
  ),
  SubFood(
    name: "espresso",
    imageurl: "assets/images/espresso.jpg",
    sdescription: Des.drink,
    rating: 5,
    price: 12,
  ),
  SubFood(
    name: "whiskey",
    imageurl: "assets/images/whiskey.png",
    sdescription: Des.drink,
    rating: 5,
    price: 11,
  ),
]; // done
List<SubFood> Spagheti = [
  SubFood(
    name: "spaghetti",
    imageurl: "assets/images/spaghetti.jpg",
    sdescription: Des.spagheti,
    rating: 4,
    price: 19,
  ),
  SubFood(
    name: "Shrimp Scampi",
    imageurl: "assets/images/Shrimp-Scampi-Pasta.jpg",
    sdescription: Des.spagheti,
    rating: 4,
    price: 66,
  ),
  SubFood(
    name: "Tagliatelle with mushrooms",
    imageurl: "assets/images/Tagliatelle with mushrooms.jpeg",
    sdescription: Des.spagheti,
    rating: 4,
    price: 55,
  ),
  SubFood(
    name: "Tortellini",
    imageurl: "assets/images/Tortellini.jpg",
    sdescription: Des.spagheti,
    rating: 4,
    price: 45,
  ),
  SubFood(
    name: "Vermicelli noodels",
    imageurl: "assets/images/Vermicelli noodels.jpg",
    sdescription: Des.spagheti,
    rating: 4,
    price: 20,
  ),
]; // done

List<Food> foods = [
  Food(
    name: "Sea Food",
    imageurl: "assets/images/seafood.jpg",
    subfood: SeaFood,
  ),
  Food(
    name: "Fast Food",
    imageurl: "assets/images/fastfood.jpg",
    subfood: FastFood,
  ),
  Food(
    name: "Spagheti",
    imageurl: "assets/images/Spaghettipic.jpg",
    subfood: Spagheti,
  ),
  Food(
    name: "Drink",
    imageurl: "assets/images/drink.jpg",
    subfood: Drink,
  ),
  Food(
    name: "Deser",
    imageurl: "assets/images/deser.jpg",
    subfood: Deser,
  ),
];
