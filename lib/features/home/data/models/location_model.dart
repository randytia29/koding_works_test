import 'package:kodingworkstest/features/home/domain/entities/location.dart';

class LocationModel extends Location {
  const LocationModel(
      {required String id,
      required String district,
      required String districtId,
      required String subdistrict,
      required String subdistrictId,
      required String? image})
      : super(
            id: id,
            district: district,
            districtId: districtId,
            subdistrict: subdistrict,
            subdistrictId: subdistrictId,
            image: image);

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        id: json["id"],
        district: json["district"],
        districtId: json["districtId"],
        subdistrict: json["subdistrict"],
        subdistrictId: json["subdistrictId"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "district": district,
        "districtId": districtId,
        "subdistrict": subdistrict,
        "subdistrictId": subdistrictId,
        "image": image,
      };
}
