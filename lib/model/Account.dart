class Account {

  final String username;
  final String password;

  const Account({
    required this.username,
    required this.password,

  });

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      username: json['username'],
      password: json['password'],

    );
  }
}