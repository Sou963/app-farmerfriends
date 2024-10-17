
class user {
  int user_id;
  String user_name;
  String user_email;
  String user_password;
  int user_national_id;

  user(
    this.user_id,
    this.user_name,
    this.user_email,
    this.user_password,
    this.user_national_id,
  );

  Map<String, dynamic> toJson() => {
        "user_id": user_id.toString(),
        'user_name': user_name,
        'user_email': user_email,
        'user_password': user_password,
        'user_national_id': user_national_id,
      };
}
