class AuthModel {
  final String username;
  final String password;

  AuthModel({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJsom() {
    return {
      'username': username,
      'password': password,
    };
  }
}

class AuthUserModel {
  final int userId;
  final String username;
  final String? avatar;
  final String token;

  AuthUserModel({
    required this.userId,
    required this.username,
    this.avatar = '',
    required this.token,
  });

  factory AuthUserModel.fromJsom(Map<String, dynamic> json) {
    return AuthUserModel(
      userId: json['user_id'],
      username: json['username'],
      avatar: json['avatar'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJsom() {
    return {
      'user_id': userId,
      'username': username,
      'avatar': avatar,
      'token': token,
    };
  }
}
