import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/product.dart';

class ProductsHttpService {
  Future<List<Product>> getProductsFetch() async {
    Uri url = Uri.parse(
        "https://lesson46-7e4d7-default-rtdb.firebaseio.com/products.json");

    final response = await http.get(url);
    final data = jsonDecode(response.body);
    List<Product> loadedProducts = [];
    if (data != null) {
      //Map<String, dynamic> mapData = data.cast<Map<String, dynamic>>();
      data.forEach((key, value) {
        loadedProducts.add(Product.fromJson(value));
      });
    }
    print(loadedProducts);
    return loadedProducts;
  }
}
