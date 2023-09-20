import 'package:http/http.dart' as http;
import 'dart:convert';

// 동기적 방식으로 소화
void main() async {
  var res = await fetchTodoList();
  List<Todo> todos = [];
  if (res.statusCode == 200) {
    // print("통신 성공");
    List<dynamic> list = json.decode(res.body);
    // list.forEach((element) {
    //   Todo letTodo = Todo.fromJson(element);
    //   todos.add(letTodo);
    // });
    // print(todos[0].toString());

    // 추후 학습
    List<Todo> myTodo = list.map((e) => Todo.fromJson(e)).toList();
    print(myTodo[0].toString());
  } else {}
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;
  // [ ]
  // { } <-- 명명된 파라 미터
  Todo(
      {required this.userId,
        required this.id,
        required this.title,
        required this.completed});

  Todo.fromJson(Map<String, dynamic> map)
      : userId = map["userId"],
        id = map["id"],
        title = map["title"],
        completed = map["completed"];

  @override
  String toString() {
    return "userId : $userId , id: $id, title: $title, completed : $completed";
  }
}

Future<http.Response> fetchTodoList() async {
  const url = "https://jsonplaceholder.typicode.com/todos";
  final response = await http.get(Uri.parse(url));
  return response;
}