import 'package:kodingworkstest/features/home/domain/entities/size.dart';

class SizeModel extends Size {
  const SizeModel(
      {required int height, required int width, required int length})
      : super(height: height, width: width, length: length);

  factory SizeModel.fromJson(Map<String, dynamic> json) => SizeModel(
        height: json["height"],
        width: json["width"],
        length: json["length"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "length": length,
      };
}
