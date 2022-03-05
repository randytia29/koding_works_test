import 'package:kodingworkstest/features/home/domain/entities/image.dart';

class ImageModel extends Image {
  const ImageModel({required String id, required String url})
      : super(id: id, url: url);

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json["id"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
      };
}
