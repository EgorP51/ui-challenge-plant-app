import 'package:flutter/material.dart';
import 'package:ui_challenge/plant_shop/constants/constants.dart';
import 'package:ui_challenge/plant_shop/data/data.dart';
import 'package:ui_challenge/plant_shop/presentation/widgets/search/custom_search_bar.dart';
import 'package:ui_challenge/plant_shop/presentation/widgets/search/scrollable_body.dart';
import 'package:ui_challenge/plant_shop/presentation/widgets/search/search_app_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(),
      backgroundColor: Constants.backgroundColor,
      drawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CustomSearchBar(),
          ScrollableBody(items: itemsFromDb ?? []),
        ],
      ),
    );
  }
}
