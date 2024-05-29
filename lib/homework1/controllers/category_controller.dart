

import '../models/categories_model.dart';
import '../services/category_http_services.dart';

class CategoriesController {
  final categoriesHttpServiced = CategoriesHttpService();

  Future<List<CategoriesModel>> getCategories() async {
    List<CategoriesModel> products = await categoriesHttpServiced.fetchCategories();
    return products;
  }
}
