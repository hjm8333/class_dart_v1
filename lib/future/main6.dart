import 'package:http/http.dart' as http;

void main() {
  // https://jsonplaceholder.typicode.com/posts/10
  // https://jsonplaceholder.typicode.com/posts
  fetchTodo().then((v) {
    print("http status code : ${v.statusCode}");
    print("-------------------------------------------------");
    print("HTTP Message Header : ${v.headers}");
    print("-------------------------------------------------");
    print("HTTP Message body : ${v.body}");
  });

  fetchTodoList().then((v) {
    print("http status code : ${v.statusCode}");
    print("-------------------------------------------------");
    print("HTTP Message Header : ${v.headers}");
    print("-------------------------------------------------");
    print("HTTP Message body : ${v.body}");
  });
}

Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/posts/10";
  return await http.get(Uri.parse(url));
}
Future<http.Response> fetchTodoList() async {
  const url = "https://jsonplaceholder.typicode.com/posts";
  return await http.get(Uri.parse(url));
}