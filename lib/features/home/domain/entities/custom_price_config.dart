import 'package:equatable/equatable.dart';

class CustomPriceConfig extends Equatable {
  const CustomPriceConfig({
    required this.minimumCustomPrice,
    required this.recommendedCustomPrice,
  });

  final int minimumCustomPrice;
  final int recommendedCustomPrice;

  @override
  List<Object?> get props => [minimumCustomPrice, recommendedCustomPrice];
}
