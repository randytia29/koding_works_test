import 'package:equatable/equatable.dart';

class AspectRatio extends Equatable {
  const AspectRatio({
    required this.width,
    required this.height,
  });

  final int width;
  final int height;

  @override
  List<Object?> get props => [width, height];
}
