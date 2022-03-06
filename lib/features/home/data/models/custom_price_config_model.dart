import 'package:kodingworkstest/features/home/domain/entities/custom_price_config.dart';

class CustomPriceConfigModel extends CustomPriceConfig {
  const CustomPriceConfigModel(
      {required int minimumCustomPrice, required int recommendedCustomPrice})
      : super(
            minimumCustomPrice: minimumCustomPrice,
            recommendedCustomPrice: recommendedCustomPrice);

  factory CustomPriceConfigModel.fromJson(Map<String, dynamic> json) =>
      CustomPriceConfigModel(
        minimumCustomPrice: json["minimumCustomPrice"],
        recommendedCustomPrice: json["recommendedCustomPrice"],
      );

  Map<String, dynamic> toJson() => {
        "minimumCustomPrice": minimumCustomPrice,
        "recommendedCustomPrice": recommendedCustomPrice,
      };
}
