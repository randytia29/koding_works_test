import 'package:equatable/equatable.dart';

class Image extends Equatable {
  const Image({
    required this.id,
    required this.url,
  });

  final String id;
  final String url;

  @override
  List<Object?> get props => [id, url];
}
