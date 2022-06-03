import 'package:carapp_flutter/app/util/color.dart';
import 'package:carapp_flutter/l10n/l10n.dart';
import 'package:cars_api/cars_api.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CarListItem extends StatelessWidget {
  const CarListItem(
    Key? key, {
    required this.car,
  }) : super(key: key);

  final Car car;

  void _itemTapped({
    required BuildContext context,
    required Car car,
  }) {
    context.go(
      '/car-details',
      extra: car,
    );
  }

  @override
  Widget build(BuildContext context) {
    const textStyleBold = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    final l10n = context.l10n;

    final brand = car.brand ?? '';
    final model = car.model ?? '';
    final color = car.color ?? '';

    return GestureDetector(
      onTap: () => _itemTapped(
        context: context,
        car: car,
      ),
      child: Material(
        elevation: 8,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '${l10n.brand}:',
                    style: textStyleBold,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    brand,
                    style: textStyleBold,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                    '${l10n.model}:',
                    style: textStyleBold,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    model,
                    style: textStyleBold,
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${l10n.color}:',
                    style: textStyleBold,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: Container(
                      height: 24,
                      color: getColorFromHex(color),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
