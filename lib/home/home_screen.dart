import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_example/examples/counter_app/counter_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(CupertinoIcons.home),
            SizedBox(width: 11),
            Text('Home Screen'),
          ],
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CounterApp())),
                  child: Text(
                    'Counter App',
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                      color: Colors.grey,
                      fontWeightDelta: 1,
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Divider(),
                SizedBox(height: 16,),
                InkWell(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> CounterApp())),
                  child: Text(
                    'Switch Btn Example',
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                      color: Colors.grey,
                      fontWeightDelta: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
