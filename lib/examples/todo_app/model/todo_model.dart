class Todo{
  final String id;
  final String name;

  Todo({required this.id, required this.name});

  Todo copyWith({String? id, String? name}){
    return Todo(id: id ?? this.id, name: name ?? this.name);
  }

}