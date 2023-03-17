class User {
  final int id;
  final String name, email, avatar;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    String name = '${json['first_name']} ${json['last_name']}';
    return User(
      id: json['id'],
      name: name,
      email: json['email'],
      avatar: json['avatar'],
    );
  }

  @override
  String toString() {
    return "{id: $id, name: $name, email: $email, image: $avatar}";
  }
}
