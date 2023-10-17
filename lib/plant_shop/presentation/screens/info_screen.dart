import 'package:flutter/material.dart';
import 'package:ui_challenge/plant_shop/constants/constants.dart';
import 'package:ui_challenge/plant_shop/data/item_model.dart';
import 'package:ui_challenge/plant_shop/presentation/widgets/info/info_app_bar.dart';
import 'package:ui_challenge/plant_shop/presentation/widgets/info/info_body.dart';
import 'package:ui_challenge/plant_shop/presentation/widgets/info/info_bottom_bar.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const InfoAppBar(),
      backgroundColor: Constants.cardColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InfoBody(item: item),
          InfoBottomBar(item: item),
        ],
      ),
    );
  }
}
