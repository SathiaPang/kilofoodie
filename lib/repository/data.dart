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
        image: 'assets/images/img-brunch.jpeg',
        subtitle: 'Hamburger',
        price: '6.8 ',
        category: "Fast Food"),
    FoodRepo(
        image: 'assets/images/img-brunch.jpeg',
        subtitle: 'Hamburger',
        price: '6.8 ',
        category: "Fast Food"),
    FoodRepo(
        image: 'assets/images/img-brunch.jpeg',
        subtitle: 'Hamburger',
        price: '6.8 ',
        category: "Fast Food"),

    //Drink
    FoodRepo(
        image: 'lib/assets/images/fast-food-png-41613.png',
        subtitle: 'Drink',
        price: '6.8 ',
        category: "Drink"),
    FoodRepo(
        image: 'lib/assets/images/fast-food-png-41613.png',
        subtitle: 'Hamburger',
        price: '6.8 ',
        category: "Drink"),
    FoodRepo(
        image: 'lib/assets/images/fast-food-png-41613.png',
        subtitle: 'Hamburger',
        price: '6.8 ',
        category: "Drink"),

    //Snack
    FoodRepo(
        image: 'lib/assets/images/fast-food-png-41613.png',
        subtitle: 'Hamburger',
        price: '6.8 ',
        category: "Snack"),
    FoodRepo(
        image: 'lib/assets/images/fast-food-png-41613.png',
        subtitle: 'Hamburger',
        price: '6.8 ',
        category: "Snack"),
    FoodRepo(
        image: 'lib/assets/images/fast-food-png-41613.png',
        subtitle: 'Hamburger',
        price: '6.8 ',
        category: "Drink"),
  ];
}
