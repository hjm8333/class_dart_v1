void main() async {
  Future<String> name = Future.value("텐코딩");
  Future<int> number = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(number);
  print(isTrue);
  print("----------------------------");

  //Future 타입을 소화시키는법
  //1.코드를 동기적으로 처리

  print(await name);
  print(await number);
  print(await isTrue);

  //2. 콜백 메소드 활용 Future.then()
  name.then((v) => print("Futre type에서 값 꺼내기 : $v"));
  number.then((value) => print("값 확인 : $value"));
  isTrue.then((value) => print("값 확인 : $value"));
  print("---------------------------------마지막줄");
}