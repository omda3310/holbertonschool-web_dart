import 'dart:convert';
import 'package:http/http.dart' as http;

printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final characters = data['results'] as List;

      for (var i = 0; i < 17 && i < characters.length; i++) {
        print(characters[i]['name']);
      }
    } else {
      print('Error: Unable to fetch characters. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error caught: $e');
  }
}
