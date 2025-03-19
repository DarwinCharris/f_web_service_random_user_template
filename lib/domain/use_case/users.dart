import 'package:get/get.dart';
import '../entities/random_user.dart';
import '../repositories/iuserrepository.dart';

class Users {
  IUserRepository repository = Get.find();

  // TODO: implement use case methods calling the repository
  Future<void> addUser() async => await repository.getUser();
  Future<List<RandomUser>> getAllUsers() async =>
      await repository.getAllUsers();
  Future<void> deleteUser(id) async => await repository.deleteUser(id);
  Future<void> deleteAll() async => await repository.deleteAll();
  Future<void> updateUser(user) async => await repository.updateUser(user);
}
