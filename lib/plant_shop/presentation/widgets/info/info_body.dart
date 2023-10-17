import 'package:flutter/material.dart';
import 'package:ui_challenge/plant_shop/constants/constants.dart';
import 'package:ui_challenge/plant_shop/data/item_model.dart';

class InfoBody extends StatelessWidget {
  const InfoBody({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Constants.defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: FittedBox(
              child: Image.network(item.img ?? ''),
            ),
          ),
          Text(
            '${item.name}',
            style: Theme.of(context).textTheme.displayLarge
          ),
        ],
      ),
    );
  }
}
