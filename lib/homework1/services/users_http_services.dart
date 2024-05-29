import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/user_model.dart';


class UserHttpService {
  Future<List<UserModel>> fetchCategories() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/users");

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<UserModel> categories = [];
      for (int i = 0; i < data.length; i++) {
        categories.add(UserModel.fromJson(data[i] as Map<String, dynamic>));
      }
      return categories;
    } else {
      throw Exception("error: http product server");
    }
  }
}