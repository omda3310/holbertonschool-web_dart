import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  
  User({
    required int id,
    required String name,
    required int age,
    required double height,
    required String user_password}) : super(password: user_password ?? '') {
	this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
  }

  String get user_password {
    return super.password;
  }

  set user_password(String password) {
    super.password = password;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      'user_password': this.user_password,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return "User(id: $id, name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}
