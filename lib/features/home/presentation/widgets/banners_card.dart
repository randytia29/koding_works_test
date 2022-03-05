import 'package:flutter/widgets.dart';
import '../../domain/entities/banners.dart';

class BannersCard extends StatelessWidget {
  const BannersCard({
    Key? key,
    required this.banners,
  }) : super(key: key);

  final Banners banners;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      height: 100,
      width: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(banners.image.url), fit: BoxFit.fill),
      ),
    );
  }
}
