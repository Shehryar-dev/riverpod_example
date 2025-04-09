import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/text_field_example/provider/textfield_provider.dart';


class TextFieldWidget extends ConsumerWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if(kDebugMode){
      debugPrint('widget rebuild state faild');
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.switch_left),
            SizedBox(width: 11),
            Text('Stats Notifier Provider'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Live preview text
            Consumer(builder: (context, ref, child) {
              final search = ref.watch(textFieldProvider.select((state) => state.controller));
              return Text(search, style: const TextStyle(fontSize: 18));
            }),

            const SizedBox(height: 24),

            // TextField Styled as Password Field
            Consumer(builder: (context, ref, _) {
              final isVisible = ref.watch(textFieldProvider.select((state)=> state.isVisible));
              return TextField(
                obscureText: !isVisible, // will toggle visibility
                onChanged: (value) {
                  ref.read(textFieldProvider.notifier).search(value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  suffixIcon: IconButton(onPressed: (){

                     ref.read(textFieldProvider.notifier).toggleVisibility();
                  }, icon:Icon(isVisible ? Icons.visibility : Icons.visibility_off)), // replace later with toggle logic
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
