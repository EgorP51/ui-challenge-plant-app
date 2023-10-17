import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/plant_shop/constants/constants.dart';

class InfoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const InfoAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: const [
        Icon(
          CupertinoIcons.shopping_cart,
          color: Constants.titleTextColor,
        ),
        SizedBox(
          width: Constants.defaultPadding,
        )
      ],
      leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: Constants.titleTextColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
