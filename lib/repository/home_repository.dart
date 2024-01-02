import 'package:kilofoodie/repository/data.dart';
class HomeRepository {
  
  List<FoodRepo> getFoodList() {
    return FoodRepo.foodrepo;
  }
}
