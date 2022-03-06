import '../../domain/entities/category.dart';
import 'image_model.dart';

class CategoryModel extends Category {
  const CategoryModel(
      {required String id,
      required String name,
      required String slug,
      required ImageModel image,
      required int priority})
      : super(id: id, name: name, slug: slug, image: image, priority: priority);

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
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
