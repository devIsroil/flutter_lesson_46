import 'package:json_annotation/json_annotation.dart';
import 'category_model.dart';
part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  final int id;
  final String title;
  final int price;
  final String description;
  final List<String> images;
  final String creationAt;
  final String updatedAt;
  final Category category;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.creationAt,
    required this.updatedAt,
    required this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return _$ProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProductModelToJson(this);
  }
}