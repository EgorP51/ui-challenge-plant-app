import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/plant_shop/constants/constants.dart';
import 'package:ui_challenge/plant_shop/data/item_model.dart';
import 'package:ui_challenge/plant_shop/presentation/screens/info_screen.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => InfoScreen(item: item),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(Constants.defaultPadding / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constants.cardRadius),
          color: Constants.cardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO: add checking if img is empty!
            Image.network(item.img ?? ''),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                item.name ?? '',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleMedium
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${item.price}\$',
                    style: Theme.of(context).textTheme.labelMedium
                  ),
                  const Icon(
                    CupertinoIcons.heart_circle_fill,
                    size: 38,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
