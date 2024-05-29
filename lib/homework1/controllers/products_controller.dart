
import '../models/products_model/product_model.dart';
import '../services/products_http_services.dart';

class ProductController {
  final productsHttpServiced = ProductsHttpServices();

  Future<List<ProductModel>> getProducts() async {
    List<ProductModel> products = await productsHttpServiced.fetchProducts();
    return products;
  }
}