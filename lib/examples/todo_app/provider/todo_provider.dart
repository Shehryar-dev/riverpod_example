
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/examples/todo_app/model/todo_model.dart';

final todoListProvider  = StateNotifierProvider<TodoNotifier, List<Todo>>((ref){
   return TodoNotifier();
});



class  TodoNotifier extends StateNotifier<List<Todo>>{
  TodoNotifier() : super([]);

  void addTodo(String name){
    final item = Todo(id: DateTime.now().toString(), name: name);
    state.add(item);
  }


  void editTodo(String id, String updatedName){
    state = state.map((todo){
      if(todo.id == id){
        return todo.copyWith(name: updatedName);
      }
      return todo;
    }).toList();
  }


  void deleteTodo(String id){
    state = state.where((todo)=> todo.id != id).toList();
  }
}