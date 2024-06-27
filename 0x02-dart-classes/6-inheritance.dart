import '6-password.dart';

class User {
  int id;
  String name;
  int age;
  double height;
  String? user_password ='';

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    this.user_password,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      //'user_password': user_password?.toString(),
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: '', 
    );
  }

  @override
  String toString() {
     final pass = Password(password: this.user_password!);
    return 'User(id: $id, name: $name, age: $age, height: $height, password:  ${pass.isValid()}))';
  }
}