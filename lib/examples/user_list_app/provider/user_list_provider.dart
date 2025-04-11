
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/future_provider/model/user_model.dart';
import 'package:http/http.dart' as http;

final userListProvider = FutureProvider<UserModel>((ref) async{
  final url = 'https://reqres.in/api/users?page=2';
  final response = await http.get(Uri.parse(url));
  if(response.statusCode ==  200){
    final data = jsonDecode(response.body);
    return UserModel.fromJson(data);
  }else{
    throw Exception('Failed to load users');
  }
});