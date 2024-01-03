import 'package:flutter/material.dart';
import 'package:kilofoodie/components/Favorite_screen_comp/favor_food_box.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites'),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return FavoriteFoodBox();
        },
      ),
    );
  }
}
