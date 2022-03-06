import 'package:kodingworkstest/features/home/domain/entities/reseller_configs.dart';

class ResellerConfigsModel extends ResellerConfigs {
  const ResellerConfigsModel(
      {required int? resellerPrice,
      required int? minimumResellerSalePrice,
      required int? recommendedResellerPrice})
      : super(
            resellerPrice: resellerPrice,
            minimumResellerSalePrice: minimumResellerSalePrice,
            recommendedResellerPrice: recommendedResellerPrice);

  factory ResellerConfigsModel.fromJson(Map<String, dynamic> json) =>
      ResellerConfigsModel(
        resellerPrice: json["resellerPrice"],
        minimumResellerSalePrice: json["minimumResellerSalePrice"],
        recommendedResellerPrice: json["recommendedResellerPrice"],
      );

  Map<String, dynamic> toJson() => {
        "resellerPrice": resellerPrice,
        "minimumResellerSalePrice": minimumResellerSalePrice,
        "recommendedResellerPrice": recommendedResellerPrice,
      };
}
