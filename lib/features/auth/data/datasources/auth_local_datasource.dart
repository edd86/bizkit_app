abstract class AuthLocalDatasource {
  Future<void> createNewUser();
}

class AuthLocalDatasourceImpl implements AuthLocalDatasource {
  @override
  Future<void> createNewUser() async {
    // TODO: implement createNewUser
    throw UnimplementedError();
  }
}
