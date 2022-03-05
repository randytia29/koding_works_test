import 'package:kodingworkstest/features/home/data/models/aspect_ratio_model.dart';
import 'package:kodingworkstest/features/home/data/models/image_model.dart';
import 'package:kodingworkstest/features/home/domain/entities/banners.dart';

class BannersModel extends Banners {
  const BannersModel(
      {required String id,
      required String title,
      required int priority,
      required String description,
      required ImageModel image,
      required List<String>? tags,
      required AspectRatioModel aspectRatio})
      : super(
            id: id,
            title: title,
            priority: priority,
            description: description,
            image: image,
            tags: tags,
            aspectRatio: aspectRatio);

  factory BannersModel.fromJson(Map<String, dynamic> json) => BannersModel(
        id: json["id"],
        title: json["title"],
        priority: json["priority"],
        description: json["description"],
        image: ImageModel.fromJson(json["image"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
        aspectRatio: AspectRatioModel.fromJson(json["aspectRatio"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "priority": priority,
        "description": description,
        "image": image.toJson(),
        "tags": List<String>.from(tags?.map((x) => x) ?? <String>[]),
        "aspectRatio": aspectRatio.toJson(),
      };
}
