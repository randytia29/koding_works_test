import 'package:equatable/equatable.dart';

import '../../data/models/image_model.dart';

class Categories extends Equatable {
  const Categories({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.priority,
  });

  final String id;
  final String name;
  final String slug;
  final ImageModel image;
  final int priority;

  @override
  List<Object?> get props => [id, name, slug, image, priority];
}
