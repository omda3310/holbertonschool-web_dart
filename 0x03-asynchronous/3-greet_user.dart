import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    final data = await fetchUserData();
    final user = jsonDecode(data);
    return 'Hello ${user['username']}';
  } catch (err) {
    return 'error caught: $err';
  }
}

Future<String> loginUser() async {
  try {
    final isValid = await checkCredentials();
    print('There is a user: $isValid');
    if (isValid) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (err) {
    return 'error caught: $err';
  }
}
