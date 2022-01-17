import 'package:dio/dio.dart';
import 'package:retrofit_example/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'user_repository.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class UserRepository {
  factory UserRepository(Dio dio, {String baseUrl}) = _UserRepository;
  //
  @GET('users')
  Future<List<UserModel>> findAll();
}
