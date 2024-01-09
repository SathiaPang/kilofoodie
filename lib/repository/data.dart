//This is on handle for
class FoodCategory {
  String food, images, price, rate;

  FoodCategory({
    required this.food,
    required this.images,
    required this.price,
    required this.rate,
  });

  static List<FoodCategory> getList() => [
        FoodCategory(food: "Drink", images: "", price: "", rate: ""),
        FoodCategory(food: "Snack", images: "", price: "", rate: ""),
      ];
}

class FoodRepo {
  String image, subtitle, price, category, detail;

  FoodRepo({
    required this.image,
    required this.subtitle,
    required this.price,
    required this.category,
    required this.detail,
  });
  static List<FoodRepo> foodrepo = [
    //fast food
    FoodRepo(
      image: 'assets/images/food/food-1.png',
      subtitle: 'Elumichai sadam',
      price: '25 ',
      category: "Fast Food",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/food/food-2.png',
      subtitle: 'Chicken soup',
      price: '25.5',
      category: "Fast Food",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/food/food-3.png',
      subtitle: 'Pad Thai',
      price: '15.6 ',
      category: "Fast Food",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/food/food-4.png',
      subtitle: 'Gyro Sandwich',
      price: '18.90 ',
      category: "Fast Food",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/food/food-5.png',
      subtitle: 'Miso Soup',
      price: '9.80 ',
      category: "Fast Food",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),

    //Drink
    FoodRepo(
      image: 'assets/images/drink/drink-1.png',
      subtitle: 'Gin and Coke',
      price: '7.3 ',
      category: "Drink",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/drink/drink-2.png',
      subtitle: 'Dirty Martini',
      price: '9.25 ',
      category: "Drink",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/drink/drink-3.png',
      subtitle: 'Negroni',
      price: '10.25 ',
      category: "Drink",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/drink/drink-4.png',
      subtitle: 'Gin and Tonic',
      price: '5.50 ',
      category: "Drink",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/drink/drink-5.png',
      subtitle: 'Martini',
      price: '4.75',
      category: "Drink",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),

    //Snack
    FoodRepo(
      image: 'assets/images/snacks/snack-1.png',
      subtitle: 'Berry Bliss',
      price: '5.35 ',
      category: "Snack",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-2.png',
      subtitle: 'Mango Tango',
      price: '6.75 ',
      category: "Snack",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-3.png',
      subtitle: 'Almond Delight',
      price: '8.65',
      category: "Snack",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-4.png',
      subtitle: 'Coconut Crunch',
      price: '4.35',
      category: "Snack",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-5.png',
      subtitle: 'Chocolate Hazelnut',
      price: '2.25',
      category: "Snack",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
    FoodRepo(
      image: 'assets/images/snacks/snack-6.png',
      subtitle: 'Citrus Popcorn',
      price: '5.65 ',
      category: "Snack",
      detail:
          "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
    ),
  ];
}
