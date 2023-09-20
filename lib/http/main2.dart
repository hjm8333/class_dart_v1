import 'package:flutter_v1/future/main7.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// 동기적 방식으로 소화
void main() async {
  // body 응답시
  // Json Object type
  // Json Array type

  String jsonArrStr = '''
    [
      {
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
        "completed": false
      },
      {
        "userId": 1,
        "id": 2,
        "title": "quis ut nam facilis et officia qui",
        "completed": false
      }
    ]  
  ''';
  // 반드시 기억 하자
  // json.decode(String); --> Map<String,dynamic>
  // json.decode(String); --> List<dynamic>  ( Json Array Type )
  print(json.decode(jsonArrStr).runtimeType);
  List<dynamic> listBody1 = json.decode(jsonArrStr);
  print(listBody1.runtimeType);
  print(listBody1[0]);
  print(listBody1[0].runtimeType);
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;
  // [ ]
  // { } <-- 명명된 파리미터
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