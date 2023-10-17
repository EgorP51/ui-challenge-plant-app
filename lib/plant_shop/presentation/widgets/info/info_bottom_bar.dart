import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/plant_shop/constants/constants.dart';
import 'package:ui_challenge/plant_shop/constants/texts.dart';
import 'package:ui_challenge/plant_shop/data/item_model.dart';

class InfoBottomBar extends StatelessWidget {
  const InfoBottomBar({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(Constants.cardRadius * 2),
          topEnd: Radius.circular(Constants.cardRadius * 2),
        ),
        color: Constants.greenColor,
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Constants.defaultPadding),
        child: Column(
          children: [
            ParamsWidget(item: item),
            const Spacer(),
            OrderWidget(item: item),
          ],
        ),
      ),
    );
  }
}

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              Texts.totalPrice,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Constants.cardColor.withOpacity(0.8),
                  ),
            ),
            Text(
              '${item.price}\$',
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Constants.cardColor,
              ),
            ),
          ],
        ),
        CupertinoButton(
          color: Constants.buttonGreenColor,
          borderRadius: BorderRadius.circular(16),
          minSize: 60,
          child: Text(
            Texts.addToCart,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontSize: 17,
              color: Constants.cardColor,
            ),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

class ParamsWidget extends StatelessWidget {
  const ParamsWidget({super.key, required this.item});

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _SingleParamWidget(
          icon: Icons.height,
          title: Texts.height,
          subtitle: item.params?.height ?? '',
        ),
        _SingleParamWidget(
          icon: Icons.device_thermostat_outlined,
          title: Texts.temperature,
          subtitle: item.params?.temperature ?? '',
        ),
        _SingleParamWidget(
          icon: CupertinoIcons.archivebox_fill,
          title: Texts.pot,
          subtitle: item.params?.pot ?? '',
        ),
      ],
    );
  }
}

class _SingleParamWidget extends StatelessWidget {
  const _SingleParamWidget({
    this.icon,
    this.title,
    this.subtitle,
  });

  final IconData? icon;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1/3,
      child: Column(
        children: [
          if (title != null) ...[
            Icon(
              icon!,
              color: Constants.cardColor,
              size: 25,
            ),
            const SizedBox(height: 10)
          ],
          if (title != null) ...[
            Text(
              title!,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontSize: 17,
                color: Constants.cardColor,
              ),
            ),
            const SizedBox(height: 4)
          ],
          if (subtitle != null)
            Text(
              subtitle!,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 15,
                color: Constants.cardColor,
              ),
            ),
        ],
      ),
    );
  }
}
