import 'package:equatable/equatable.dart';

class Size extends Equatable {
  const Size({
    required this.height,
    required this.width,
    required this.length,
  });

  final int height;
  final int width;
  final int length;

  @override
  List<Object?> get props => [height, width, length];
}
