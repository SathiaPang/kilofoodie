import 'package:flutter/material.dart';
import 'package:kilofoodie/constants.dart';


class CustomTabBarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: CustomTabBar(),
    );
  }
}

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _activeTab = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      setState(() {
        _activeTab = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 0, bottom: 10),
          child: SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: TabBar(
              dividerColor: Colors.transparent,
              isScrollable: true,
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              tabAlignment: TabAlignment.start,
              tabs: [
                buildTab("Fast Food", Icons.fastfood_outlined, 0),
                buildTab("Drink", Icons.local_cafe_outlined, 1),
                buildTab("Snack", Icons.movie_creation_outlined, 2),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            height: 450,
            width: MediaQuery.of(context).size.width * 0.8,
            child: TabBarView(
              controller: _tabController,
              children: [
                Expanded(
                  child: Container(
                    //child: FastFoodDetail(),
                    color: Colors.teal,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Constants.secondaryColor,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Constants.formtextcolor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTab(String label, IconData icon, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: _activeTab == index
            ? Constants.primaryColor
            : Constants.UnselectedColor,
      ),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(
              icon,
              color: _activeTab == index
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

  Widget buildTabViewContainer(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
