import 'package:equatable/equatable.dart';

class Location extends Equatable {
  const Location({
    required this.id,
    required this.district,
    required this.districtId,
    required this.subdistrict,
    required this.subdistrictId,
    required this.image,
  });

  final String id;
  final String district;
  final String districtId;
  final String subdistrict;
  final String subdistrictId;
  final String? image;

  @override
  List<Object?> get props =>
      [id, district, districtId, subdistrict, subdistrictId, image];
}
