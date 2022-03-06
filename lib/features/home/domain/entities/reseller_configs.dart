import 'package:equatable/equatable.dart';

class ResellerConfigs extends Equatable {
  const ResellerConfigs({
    required this.resellerPrice,
    required this.minimumResellerSalePrice,
    required this.recommendedResellerPrice,
  });

  final int? resellerPrice;
  final int? minimumResellerSalePrice;
  final int? recommendedResellerPrice;

  @override
  List<Object?> get props =>
      [resellerPrice, minimumResellerSalePrice, recommendedResellerPrice];
}
