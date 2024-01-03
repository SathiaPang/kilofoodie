class FoodCategory {
  String food, images, price, rate;

  FoodCategory({
    required this.food,
    required this.images,
    required this.price,
    required this.rate,
  });

  static List<FoodCategory> getList() => [
        FoodCategory(food: "Fast Food", images: "", price: "", rate: ""),
        FoodCategory(food: "Drink", images: "", price: "", rate: ""),
        FoodCategory(food: "Snack", images: "", price: "", rate: ""),
      ];
}

class FoodRepo {
  String image, subtitle, price, category;

  FoodRepo({
    required this.image,
    required this.subtitle,
    required this.price,
    required this.category,
  });

  static List<FoodRepo> foodrepo = [
    //fast food
    FoodRepo(
      image: 'assets/images/food/food-1.png',
      subtitle: 'Elumichai sadam',
      price: '25 ',
      category: "Fast Food",
    ),
    FoodRepo(
      image: 'assets/images/food/food-2.png',
      subtitle: 'Chicken soup',
      price: '25.5',
      category: "Fast Food",
    ),
    FoodRepo(
      image: 'assets/images/food/food-3.png',
      subtitle: 'Pad Thai',
      price: '15.6 ',
      category: "Fast Food",
    ),
    FoodRepo(
      image: 'assets/images/food/food-4.png',
      subtitle: 'Gyro Sandwich',
      price: '18.90 ',
      category: "Fast Food",
    ),
    FoodRepo(
      image: 'assets/images/food/food-5.png',
      subtitle: 'Miso Soup',
      price: '9.80 ',
      category: "Fast Food",
    ),

    //Drink
    FoodRepo(
      image: 'assets/images/drink/drink-1.png',
      subtitle: 'Gin and Coke',
      price: '7.3 ',
      category: "Drink",
    ),
    FoodRepo(
      image: 'assets/images/drink/drink-2.png',
      subtitle: 'Dirty Martini',
      price: '9.25 ',
      category: "Drink",
    ),
    FoodRepo(
      image: 'assets/images/drink/drink-3.png',
      subtitle: 'Negroni',
      price: '10.25 ',
      category: "Drink",
    ),
    FoodRepo(
      image: 'assets/images/drink/drink-4.png',
      subtitle: 'Gin and Tonic',
      price: '5.50 ',
      category: "Drink",
    ),
    FoodRepo(
      image: 'assets/images/drink/drink-5.png',
      subtitle: 'Martini',
      price: '4.75',
      category: "Drink",
    ),

    //Snack
    FoodRepo(
      image: 'assets/images/snacks/snack-1.png',
      subtitle: 'Berry Bliss',
      price: '5.35 ',
      category: "Snack",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-2.png',
      subtitle: 'Mango Tango',
      price: '6.75 ',
      category: "Snack",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-3.png',
      subtitle: 'Almond Delight',
      price: '8.65',
      category: "Snack",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-4.png',
      subtitle: 'Coconut Crunch',
      price: '4.35',
      category: "Snack",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-5.png',
      subtitle: 'Chocolate Hazelnut',
      price: '2.25',
      category: "Snack",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-6.png',
      subtitle: 'Citrus Popcorn',
      price: '5.65 ',
      category: "Snack",
    ),
  ];
}
