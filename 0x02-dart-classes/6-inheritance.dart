import '6-password.dart';

class User extends Password {
	int? id;
	String? name;
	int? age;
	double? height;
	String user_password = '';
	User({this.id, this.name, this.age, this.height, String? user_password}) : super(password: user_password ?? '') {
    this.user_password = user_password ?? '';
   	}

	Map toJson() {
		return {'id': '${this.id}', 'name': '${this.name}', 'age': '${this.age}', 'height': '${this.height}'};
	}

	static User fromJson(Map<dynamic, dynamic> userJson) {
		return User(name: userJson['name'], age: userJson['age'], height: userJson['height'], id: userJson['id'], user_password: userJson['user_password']);
	}

	@override
	String toString() {
		return "User(id: $id, name: $name, age: $age, height: $height, Password: ${Password(password: this.user_password).isValid()})";
	}
}
