import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:session_two/core/core.dart';

// by condition
Future<dynamic> fetchAlbum() async {
  final String uri =
      'https://jsonplaceholder.typicode.com/comments'; // بنستعين بلينك معين من النت
  final res =
      await http.get(Uri.parse(uri)); // بنقوله السترينج دا وحوله إلى يو ار اي

  if (res.statusCode == 200) {
    // from json to map
    final obj = convert.json.decode(res.body);
    /* // from map to json
    Map<String, dynamic> dataToJson = {'name': 'Ahmed', 'age': 18};
    final requestData = convert.json.encode(dataToJson);
 */
    return obj;
  } else {
    throw Exception("Error!");
  }
}

// by then
Future<void> getData() async {
  Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/comments');

  http.get(uri).then((data) {
    var body = convert.json.decode(data.body)[1]['name'];
    print(body);
  });
}

void main(List<String> args) async {
  var data = await fetchAlbum();

/*   for (int element = 0; element < 5; element++) {
    print(data[element]["name"]);
    print(data[element]["email"]);
    print(data[element]["id"]);
    print("--------------");
  } */

  getData();
}
