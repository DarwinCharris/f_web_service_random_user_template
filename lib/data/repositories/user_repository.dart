import 'package:loggy/loggy.dart';
import '../../domain/repositories/iuserrepository.dart';
import '../datasources/local/user_local_datasource.dart';
import '../datasources/remote/user_remote_datasource.dart';
import '../../domain/entities/random_user.dart';

class UserRepository implements IUserRepository {
  late UserRemoteDatatasource remoteDataSource;
  late UserLocalDataSource localDataSource;

  UserRepository() {
    logInfo("Starting UserRepository");
    remoteDataSource = UserRemoteDatatasource();
    localDataSource = UserLocalDataSource();
  }

  @override
  Future<void> deleteAll() async {
    // TODO: implement deleteAll
    return await localDataSource.deleteAll();
    //throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(id) async {
    // TODO: implement deleteUser
    return await localDataSource.deleteUser(id);
    //throw UnimplementedError();
  }

  @override
  Future<List<RandomUser>> getAllUsers() async {
    // TODO: implement getAllUsers
    return await localDataSource.getAllUsers();
    //throw UnimplementedError();
  }

  @override
  Future<bool> getUser() async {
    // TODO: implement getUser
    RandomUser user = await remoteDataSource.getUser();
    if (user != null) {
      await localDataSource.addUser(user);
      return true;
    } else {
      return false;
    }
    //throw UnimplementedError();
  }

  @override
  Future<void> updateUser(user) async {
    // TODO: implement updateUser
    return await localDataSource.updateUser(user);
    //throw UnimplementedError();
  }
}
