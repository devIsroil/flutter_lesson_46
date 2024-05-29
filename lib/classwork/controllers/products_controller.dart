import 'package:flutter_lesson_46/classwork/models/product.dart';
import 'package:flutter_lesson_46/classwork/services/products_http_service.dart';

class ProductsController{

  final productHttpService = ProductsHttpService();

  Future<List<Product>> getProducts() async{
    List<Product> products = await productHttpService.getProductsFetch();
    return products;
  }
}