class UserModel {
  String? username;
  String? email;
  String? name;
  String? surname;
  String? password;

  UserModel(
      {this.username, this.email, this.name, this.surname, this.password});

  factory UserModel.fromMap(map) {
    return UserModel(
      username: map['username'],
      email: map['email'],
      name: map['name'],
      surname: map['surname'],
      password: map['passwod'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'email': email,
      'name': name,
      'surname': surname,
      'password': password,
    };
  }
}

