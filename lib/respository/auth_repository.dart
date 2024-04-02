import 'dart:convert';

import 'package:mvvm/data/network/base_api_services.dart';
import 'package:mvvm/data/network/network_api_service.dart';
import 'package:mvvm/res/components/app_url.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);
      return response;
      //üsttekiler aslında burdan geliyor
      // final response =
      //     await http.post(Uri.parse("url"),body: {
      //       "asdasd":'asdasd'
      //     }).timeout(const Duration(seconds: 10));
      // var data = jsonDecode(response.body);
      // if (response.statusCode == 200) {
      //   return data;
      // } else if (response.statusCode == 404) {
      //   return data;
      // }
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
          AppUrl.registerApiEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
