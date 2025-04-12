
import 'dart:convert';

import 'package:riverpod/riverpod.dart';
import 'package:riverpod_example/examples/user_detail_app/model/user_detail_model.dart';
import 'package:http/http.dart' as http;

final userProviderFamily = FutureProvider.family<UserDetailModel, int>((ref, userId) async{
   final response = await http.get(Uri.parse('https://reqres.in/api/users/$userId'));

   if(response.statusCode == 200){
     final json = jsonDecode(response.body);
     return UserDetailModel.fromJson(json['data']);
   }else{
     throw Exception('Failed to load user');
   }
});