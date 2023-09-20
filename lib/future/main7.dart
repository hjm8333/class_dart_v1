import 'dart:convert';

void main() {
  
  // 여러 줄의 문자열 ''' '''
  String jsonStr = '''
    {
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "completed": false
    }
  ''';
  
  // 1. JSON 문자열 형식을 Map구조로 파싱
  // print("jsonMap : ${json.decode(jsonStr).runtimeType}");
  // print(json.decode(jsonStr)); // json.decode() 메소드 사용해서 Map 구조로 변환된 결과
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    print("$key : $value");
  });

  print("-------------------------------------------------");

  Todo myTodo = Todo.fromJson(jsonMap);
  print("myTodo user id : ${myTodo.userId}");
  print("myTodo : ${myTodo.userId}");
  print("myTodo : ${myTodo.userId}");
  print("myTodo : ${myTodo.userId}");

}


class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  // 기본 생성자
  Todo(this.userId, this.id, this.title, this.completed);

  // 명명된 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json["userId"],
      id = json["id"],
      title = json["title"],
      completed = json["completed"];
}