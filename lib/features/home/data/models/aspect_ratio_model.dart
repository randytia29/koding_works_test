import '../../domain/entities/aspect_ratio.dart';

class AspectRatioModel extends AspectRatio {
  const AspectRatioModel({required int width, required int height})
      : super(width: width, height: height);

  factory AspectRatioModel.fromJson(Map<String, dynamic> json) =>
      AspectRatioModel(
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
      };
}
