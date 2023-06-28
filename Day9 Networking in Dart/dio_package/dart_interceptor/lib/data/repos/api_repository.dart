import 'package:dio/dio.dart';
import 'package:dart_interceptor/network/client/api_client.dart';
import 'package:dart_interceptor/network/rest_constants.dart';
import 'package:dart_interceptor/ui/userprofile/entity/user_entity.dart';
import 'package:dart_interceptor/data/repos/entities/user_entity_response.dart';


class ApiRepository {
  static final ApiRepository _converter = ApiRepository._internal();

  ApiRepository._internal();

  factory ApiRepository() {
    return _converter;
  }

  Future<UserEntity?> getUser() async {
    try {
      Response response = await ApiClient().dio().get(RestConstants.kGetUserProfile);

      return UserEntity.fromMap(response.data);
    } catch (e) {
      return null;
    }
  }
}
