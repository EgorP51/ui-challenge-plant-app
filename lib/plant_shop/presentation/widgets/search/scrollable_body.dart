import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_challenge/plant_shop/constants/constants.dart';
import 'package:ui_challenge/plant_shop/constants/texts.dart';
import 'package:ui_challenge/plant_shop/data/item_model.dart';
import 'package:ui_challenge/plant_shop/presentation/widgets/search/item_card.dart';

class ScrollableBody extends StatelessWidget {
  const ScrollableBody({super.key, required this.items});

  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Constants.defaultPadding,
        ),
        child: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: Constants.defaultPadding,
          crossAxisSpacing: Constants.defaultPadding,
          itemCount: items.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Text(
                Texts.searchResults(items.length),
                style: Theme.of(context).textTheme.displayLarge
              );
            }
            return ItemCard(
              item: items[index],
            );
          },
        ),
      ),
    );
  }
}
