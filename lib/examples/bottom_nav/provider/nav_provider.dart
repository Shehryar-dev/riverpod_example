import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../pages/home_page.dart';
import '../pages/search_page.dart';
import '../pages/profile_page.dart';
final bottomNavProvider = StateProvider<int>((ref) => 0);


final List<Widget> allPages = const [
  HomePage(),
  SearchPage(),
  ProfilePage(),
];