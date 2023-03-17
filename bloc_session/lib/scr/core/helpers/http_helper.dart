import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpHelper {
  static Future<Map<String, dynamic>> getData({
    required String url,
    Map<String, String>? headers,
  }) async {
    final Uri urlAsUri = Uri.parse(url);
    final http.Response response = await http.get(
      urlAsUri,
      headers: headers,
    );

    return {
      'statusCode': response.statusCode,
      'statusMessage': response.reasonPhrase,
      'data': jsonDecode(response.body)
    };
  }
}
