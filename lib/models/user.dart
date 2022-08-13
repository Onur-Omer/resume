class User {
  int ?id;
  String ?email;
  String ?password;

  User.withId(this.id, this.email, this.password) {}

  User(this.email, this.password) {}

  User.withoutInfo() {}

}
