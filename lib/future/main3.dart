void main() {
  // var result = addNumbers1(10, 20);
  // print("result : $result");

  // 콜백 메소드 활용
  addNumbers2(100, 100).then((value) => print("결과값 : $value"));
}

Future<int> addNumbers1(int n1, int n2) async{
  print("함수 시작");
  var result = 0;
  await Future.delayed(const Duration(seconds: 2), () {
    result = n1+n2;
  });
  print("함수 종료");
  return result;
}

Future<int> addNumbers2(int n1, int n2) {
  return Future.delayed(const Duration(seconds: 2), () => n1+n2);
}