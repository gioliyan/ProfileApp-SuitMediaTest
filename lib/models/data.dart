class Data {
  int id;
  String email;
  String firstname;
  String lastname;
  String avatar;

  Data(this.id, this.email, this.firstname, this.lastname);

  Data.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.email = parsedJson['email'];
    this.firstname = parsedJson['first_name'];
    this.lastname = parsedJson['last_name'];
    this.avatar = parsedJson['avatar'];
  }
}
