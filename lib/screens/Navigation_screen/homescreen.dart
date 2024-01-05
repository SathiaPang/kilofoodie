import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kilofoodie/components/appbar.dart';
import 'package:kilofoodie/components/drawer_widget.dart';
import 'package:kilofoodie/constant/constants.dart';
import 'package:kilofoodie/repository/data.dart';
import 'package:kilofoodie/repository/home_repository.dart';
import 'package:kilofoodie/screens/Menu%20list/item_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final HomeController _controller = Get.put(HomeController());

  final foodCategorys = ["Fast Food", "Drink", "Snack", "Coca"];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: foodCategorys.length, vsync: this);

    _tabController.addListener(() {
      _controller.setTabActive(_tabController.index);
      _controller.filterByTab(foodCategorys[_tabController.index]);
    });
  }

  List<Widget> _buildTabUI() {
    List<Widget> list = [];
    for (int i = 0; i < foodCategorys.length; i++) {
      list.add(buildTab(foodCategorys[i], Icons.snapchat, i));
    }
    return list;
  }

  Widget buildTab(String label, IconData icon, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: _controller.activeTab.value == index
            ? Constants.primaryColor
            : Constants.UnselectedColor, // Set the background color for tabs
      ),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(
              icon,
              color: _controller.activeTab.value == index
                  ? Constants.White
                  : Constants.formtextcolor,
            ),
            SizedBox(width: 10),
            Text(
              label,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer_Widgets(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppBarWidget(
                scaffoldKey: _scaffoldKey,
              ),
              const SizedBox(height: 50),
              Text(
                'Find your',
                style: _commonTextStyle(),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Best Food ',
                      style: _boldTextStyle(),
                    ),
                    TextSpan(
                      text: 'here',
                      style: _commonTextStyle(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SearchField(),
              const SizedBox(height: 20),
              //This is the OBX For the Tabbar
              Container(
                padding: EdgeInsets.only(left: 0),
                child: Obx(
                  () => TabBar(
                    isScrollable: true,
                    dividerColor: Colors.transparent,
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.white,
                    tabAlignment: TabAlignment.start,
                    tabs: _buildTabUI(),
                  ),
                ),
              ),

              //See all is here
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Constants.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              //This is the Obx for the item View
              Obx(
                () => Expanded(
                  child: ListView.builder(
                      itemCount: _controller.foodList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Item_View(food: _controller.foodList[index]);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle _commonTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 35,
      color: Colors.black,
    );
  }

  TextStyle _boldTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 35,
      color: Colors.black,
    );
  }
}

class HomeController extends GetxController {
  final repo = HomeRepository();

  var selectedIndex = 0.obs;

  List<FoodRepo> allList = [];
  final foodList = <FoodRepo>[].obs;
  final activeTab = 0.obs;

  void setTabActive(int tab) {
    activeTab(tab);
  }

  @override
  void onReady() {
    //This is the filter, that we set to filter only see what on that catergory.
    //it's work well, for category but not well for other stuff.
    allList = repo.getFoodList();
    filterByTab("Fast Food");
    super.onReady();
  }

  void filterByTab(String category) {
    final fiterList =
        allList.where((food) => food.category == category).toList();
    foodList(fiterList);
  }

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.s,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 325,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {},
                ),
                hintText: 'Search...',
                focusColor: Colors.blue,
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CategoryButton(),
        ],
      ),
    );
  }
}

Container CategoryButton() {
  return Container(
    width: 50,
    height: 50,
    transform: Matrix4.rotationZ(45 * 3.1415927 / 180),
    decoration: BoxDecoration(
      color: Constants.primaryColor,
      borderRadius: BorderRadius.circular(10),
    ),
    transformAlignment: Alignment.center,
    child: Transform.rotate(
      angle: 5.5,
      child: Center(
        child: Image.asset(
          'assets/images/image-catergory.png',
          width: 25,
        ),
      ),
    ),
  );
}
