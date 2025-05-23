import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_example/examples/bottom_nav/screen/bottom_nav_screen.dart';
import 'package:riverpod_example/examples/counter_app/counter_app.dart';
import 'package:riverpod_example/examples/favourite_app/screen/favourite_screen.dart';
import 'package:riverpod_example/examples/slider/slider.dart';
import 'package:riverpod_example/examples/switch_btn/switch_btn.dart';
import 'package:riverpod_example/examples/text_field_example/text_field.dart';
import 'package:riverpod_example/examples/time_app/screen/time_app_screen.dart';
import 'package:riverpod_example/examples/todo_app/screen/todo_screen.dart';
import 'package:riverpod_example/examples/user_list_app/screen/user_screen.dart';
import '../examples/multiple_states/multi_states_screen.dart';
import '../examples/user_detail_app/screen/user_detail_list_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_ExampleItem> examples = [
      _ExampleItem(
        title: 'Counter App',
        subtitle: 'Basic state update using Riverpod',
        icon: Icons.add,
        destination: const CounterApp(),
      ),
      _ExampleItem(
        title: 'Switch Button',
        subtitle: 'Toggle state using Riverpod',
        icon: CupertinoIcons.switch_camera,
        destination: const SwitchBtn(),
      ),
      _ExampleItem(
        title: 'Slider Example',
        subtitle: 'Slider value using Riverpod',
        icon: Icons.linear_scale_outlined,
        destination: const SliderWidget(),
      ),
      _ExampleItem(
        title: 'Multiple States',
        subtitle: 'Manage multiple states in one screen',
        icon: Icons.dashboard_customize_outlined,
        destination: const MultipleStateExample(),
      ),
      _ExampleItem(
        title: 'Password TextField',
        subtitle: 'Riverpod with StateNotifierProvider',
        icon: Icons.password,
        destination: const TextFieldWidget(),
      ),
      _ExampleItem(
        title: 'Todo App (UI)',
        subtitle: 'Basic UI - Add Riverpod yourself',
        icon: Icons.task_alt,
        destination: TodoScreen(),
      ),

      _ExampleItem(
        title: 'Favourite App',
        subtitle: 'Search, Filter & Favourite - Riverpod State Management',
        icon: Icons.favorite,
        destination: FavouriteScreen(),
      ),
      _ExampleItem(
        title: 'User List App',
        subtitle: 'Fetch Users via FutureProvider',
        icon: Icons.supervised_user_circle,
        destination: UserScreen(),
      ),
      _ExampleItem(
        title: 'Live Time App',
        subtitle: 'Using StreamProvider for real-time updates',
        icon: Icons.access_time_filled,
        destination: TimeScreen(),
      ),
      _ExampleItem(
        title: 'User Detail (Family Provider)',
        subtitle: 'Fetch user by ID using FutureProvider.family',
        icon: Icons.group,
        destination: const UserListScreen(),
      ),
      _ExampleItem(
        title: 'Bottom Navigation App',
        subtitle: 'Persistent BottomNavigationBar with Page Switching',
        icon: Icons.navigation,
        destination: const BottomNavScreen(),
      ),

    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(CupertinoIcons.home, color: Colors.white),
            SizedBox(width: 10),
            Text('Riverpod Examples'),
          ],
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: examples.length,
        itemBuilder: (context, index) {
          final item = examples[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Icon(item.icon, size: 30, color: Colors.blue.shade900),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item.destination),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _ExampleItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget destination;

  const _ExampleItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.destination,
  });
}
