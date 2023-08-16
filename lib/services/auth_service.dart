import 'dart:convert';

import 'package:calls_mobile/constants/api_constant.dart';
import 'package:calls_mobile/models/auth_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AuthService {
  final apiConstant = ApiConstant(isWeb: kIsWeb);

  Future<AuthUserModel> login(AuthModel authModel) async {
    try {
      final url = Uri.parse(apiConstant.apiAuth);
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          authModel.toJsom(),
        ),
      );
      final dataJson = jsonDecode(response.body);

      if (response.statusCode != 200) {
        throw dataJson['message'];
      }

      return AuthUserModel.fromJsom(dataJson);
    } catch (e) {
      throw e.toString();
    }
  }
}
