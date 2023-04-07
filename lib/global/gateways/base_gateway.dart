import 'dart:convert';
import 'package:goto_code_test/global/gateways/endpoints.dart';
import 'package:http/http.dart' as http;

abstract class BaseGateway {
  final String apiKey =
      '9BbvRZj2Tci0yQtDciv81pRFoLvgLd1oAceeBHtcOrF0mCqEIzP2YYFYqxV5b4ua';

  Future<Map<String, dynamic>> post(
      {required String endpoint,
      Map<String, String>? params,
      Object? body}) async {
    final uri = Uri.https(Endpoints.baseUrl, endpoint, params);
    final response = await http.post(
      uri,
      headers: _getHeaders,
      body: json.encode(body),
    );

    if (response.statusCode == 200) {
      print(response.body);
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception(response.body);
    }
  }

  Map<String, String> get _getHeaders {
    return {
      'api-key': apiKey,
      'Content-Type': 'application/json',
    };
  }
}
