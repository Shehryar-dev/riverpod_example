import 'package:riverpod/riverpod.dart';


final textFieldProvider = StateNotifierProvider<TextFieldNotifier, TextFieldState>((ref){
    return TextFieldNotifier();
});


class TextFieldNotifier extends StateNotifier<TextFieldState>{
  TextFieldNotifier() : super(TextFieldState(controller: '', isVisible: false));

  void search(String query){
    state = state.copyWith(controller: query);
  }
  void toggleVisibility() {
    state = state.copyWith(isVisible: !state.isVisible);
  }

}

class TextFieldState{
  final String controller;
  final bool isVisible;
  const TextFieldState({required this.controller, required this.isVisible});

  TextFieldState copyWith({String? controller, bool? isVisible}){
    return TextFieldState(controller: controller ?? this.controller, isVisible: isVisible ?? this.isVisible );
  }

}