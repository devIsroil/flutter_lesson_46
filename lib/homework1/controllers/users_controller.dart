
import '../models/user_model.dart';
import '../services/users_http_services.dart';

class UserController {
  final usersHttpServiced = UserHttpService();

  Future<List<UserModel>> getUsers() async {
    List<UserModel> users = await usersHttpServiced.fetchCategories();
    return users;
  }
}