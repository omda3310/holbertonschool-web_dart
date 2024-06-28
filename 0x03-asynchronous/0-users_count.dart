import '0-util.dart';

Future<void> usersCount() async {
	int nbre = await fetchUsersCount();
	print(nbre);
}