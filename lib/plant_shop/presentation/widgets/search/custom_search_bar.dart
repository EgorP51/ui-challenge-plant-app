import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/plant_shop/constants/constants.dart';
import 'package:ui_challenge/plant_shop/constants/texts.dart';


class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Constants.defaultPadding,
        vertical: Constants.defaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.06,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Constants.cardColor,
                prefixIcon: const Icon(CupertinoIcons.search),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelText: Texts.plants,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Constants.smallRadius),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Constants.smallRadius),
              color: Constants.cardColor,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(Constants.smallRadius),
              onTap: (){},
              child: const Icon(
                Icons.tune_outlined,
              ),
            ),
          )
        ],
      ),
    );
  }
}
