class UserDetailModel{
  final int id;
  final String name;
  final String email;

  UserDetailModel({required this.id, required this.name, required this.email});


  factory UserDetailModel.fromJson(Map<String, dynamic> json){
    return UserDetailModel(
        id: json['id'],
        name: json['name'],
        email: json['email']);
  }

}