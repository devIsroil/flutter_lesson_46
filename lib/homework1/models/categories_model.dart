import 'package:json_annotation/json_annotation.dart';
part 'categories_model.g.dart';

@JsonSerializable()
class CategoriesModel {
  final int id;
  final String name;
  final String image;
  final String creationAt;
  final String updatedAt;

  CategoriesModel({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return _$CategoriesModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CategoriesModelToJson(this);
  }
}