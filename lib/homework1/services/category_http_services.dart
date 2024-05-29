import 'dart:convert';


import 'package:http/http.dart' as http;

import '../models/categories_model.dart';

class CategoriesHttpService {
  Future<List<CategoriesModel>> fetchCategories() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/categories");

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<CategoriesModel> categories = [];
      for (int i = 0; i < data.length; i++) {
        categories
            .add(CategoriesModel.fromJson(data[i] as Map<String, dynamic>));
      }
      return categories;
    } else {
      throw Exception("error: http product server");
    }
  }
}