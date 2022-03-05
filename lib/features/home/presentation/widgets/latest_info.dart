import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kodingworkstest/app/config.dart';
import 'package:kodingworkstest/core/preferences/colors.dart';
import 'package:kodingworkstest/features/home/presentation/bloc/banners_bloc.dart';

class LatestInfo extends StatelessWidget {
  const LatestInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      height: 275,
      width: AppConfig.widthScreen(context),
      padding: EdgeInsets.symmetric(
          horizontal: AppConfig.paddingHorizontal,
          vertical: AppConfig.paddingVertical),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Informasi Terbaru',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Informasi terbaru hanya untukmu'),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<BannersBloc, BannersState>(
            builder: (context, bannersState) {
              if (bannersState is BannersLoaded) {
                final banners = bannersState.banners;

                return CarouselSlider(
                    items: banners
                        .map((e) => Container(
                              margin: const EdgeInsets.only(right: 24),
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(e.image.url),
                                    fit: BoxFit.fill),
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(height: 150, autoPlay: true));
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
