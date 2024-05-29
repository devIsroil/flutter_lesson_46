import 'dart:convert';


import 'package:http/http.dart' as http;

import '../models/products_model/product_model.dart';

class ProductsHttpServices {
  Future<List<ProductModel>> fetchProducts() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/products");

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> data = (jsonDecode(response.body));
      List<ProductModel> products = [];
      for (int i = 0; i < data.length; i++) {
        products.add(ProductModel.fromJson(data[i] as Map<String, dynamic>));
      }
      return products;
    } else {
      throw Exception('error: http product server');
    }
  }
}