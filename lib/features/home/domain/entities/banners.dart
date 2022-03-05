import 'package:equatable/equatable.dart';
import '../../data/models/aspect_ratio_model.dart';
import '../../data/models/image_model.dart';

class Banners extends Equatable {
  const Banners({
    required this.id,
    required this.title,
    required this.priority,
    required this.description,
    required this.image,
    required this.tags,
    required this.aspectRatio,
  });

  final String id;
  final String title;
  final int priority;
  final String description;
  final ImageModel image;
  final List<String>? tags;
  final AspectRatioModel aspectRatio;

  @override
  List<Object?> get props =>
      [id, title, priority, description, image, tags, aspectRatio];
}
