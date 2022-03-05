import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/preferences/colors.dart';

class LocationMarket extends StatelessWidget {
  const LocationMarket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.store,
              color: AppColors.primaryColor,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Freshvo Cilandak (Jabodetabek)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: const [
            Text(
              'Ubah',
              style: TextStyle(color: AppColors.blueColor),
            ),
            SizedBox(
              width: 5,
            ),
            FaIcon(
              FontAwesomeIcons.arrowRight,
              color: AppColors.blueColor,
              size: 20,
            )
          ],
        )
      ],
    );
  }
}
