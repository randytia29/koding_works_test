import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kodingworkstest/app/config.dart';
import '../bloc/banners_bloc.dart';
import 'banners_card.dart';

class BannersCarousel extends StatelessWidget {
  const BannersCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannersBloc, BannersState>(
      builder: (context, bannersState) {
        if (bannersState is BannersLoading) {
          return AppConfig.loadingKodingWorks;
        }

        if (bannersState is BannersLoaded) {
          final banners = bannersState.banners;

          return CarouselSlider(
              items: banners
                  .map((e) => BannersCard(
                        banners: e,
                      ))
                  .toList(),
              options: CarouselOptions(height: 150, autoPlay: true));
        }
        return Container();
      },
    );
  }
}
