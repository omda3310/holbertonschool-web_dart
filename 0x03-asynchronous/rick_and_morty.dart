import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List characters = data['results'];

      for (var character in characters) {
        print(character['name']);
      }
    } 
  } catch (e) {
    print('error caught: $e');
  }
}
