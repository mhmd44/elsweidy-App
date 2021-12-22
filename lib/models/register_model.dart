class ShifaaRegisterModel {
  bool status;
  String message;
  UserData data;
}

class UserData {
  String first_name;
  String last_name;
  String phone;
  String email;
  String passwod;
  bool gender;
  String image;

  UserData({
    this.first_name,
    this.last_name,
    this.email,
    this.phone,
    this.passwod,
    this.gender,
    this.image,
  });

  //named constructor
  UserData.fromjson(Map<String, dynamic> json) {}
}
