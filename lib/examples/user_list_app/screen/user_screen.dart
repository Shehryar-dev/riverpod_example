import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/user_list_app/provider/user_list_provider.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(userListProvider);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(CupertinoIcons.profile_circled),
            SizedBox(width: 10),
            Text('Favourite App'),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              data.when(
                skipError: false,
                skipLoadingOnReload: false,
                skipLoadingOnRefresh: false,
                  data: (value){
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final user = value.data![index];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(user.avatar!),
                          ),
                          title: Text('${user.firstName} ${user.lastName}'),
                          subtitle: Text(user.email!),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 20);
                      },
                      itemCount: 5,
                    );
                  },
                  error: (error, stack)=> Center(child: Text(error.toString()),),
                  loading:()=> Center(child: CircularProgressIndicator()),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ref.invalidate(userListProvider);
      }, child: Icon(CupertinoIcons.refresh),),
    );
  }
}
