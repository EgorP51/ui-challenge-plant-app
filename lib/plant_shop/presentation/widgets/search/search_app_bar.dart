import 'package:flutter/material.dart';
import 'package:ui_challenge/plant_shop/constants/constants.dart';
import 'package:ui_challenge/plant_shop/constants/texts.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const SearchAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Constants.titleTextColor),
      elevation: 0,
      title: Text(
        Texts.searchProducts,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      centerTitle: true,
      actions: const [
        CircleAvatar(
          radius: Constants.cardRadius,
          backgroundImage: NetworkImage(Constants.defaultUserImage),
        ),
        SizedBox(
          width: Constants.defaultPadding,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
