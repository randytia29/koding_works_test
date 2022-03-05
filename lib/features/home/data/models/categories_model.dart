import '../../domain/entities/categories.dart';
import 'image_model.dart';

class CategoriesModel extends Categories {
  const CategoriesModel(
      {required String id,
      required String name,
      required String slug,
      required ImageModel image,
      required int priority})
      : super(id: id, name: name, slug: slug, image: image, priority: priority);

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      CategoriesModel(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        image: ImageModel.fromJson(json["image"]),
        priority: json["priority"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "image": image.toJson(),
        "priority": priority,
      };
}
