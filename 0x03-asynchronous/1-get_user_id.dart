import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
	String userList = await fetchUserData();
	Map userListMap = jsonDecode(userList);
	return userListMap['id'];
}
