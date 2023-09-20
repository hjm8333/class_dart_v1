// await 키워드를 가지는 함수는 선언부에 async를 선언해야함
void main() async{
  //동기성 - 모든 코드가 순차적으로 진행
  //비동기성 - 코드가 동시 다발적으로 실행, 순차적으로 보장을 할 수 없는 상태

  print("task1................");
  // 기대 값 : "2초 data" 문자열
  // 실제 출력 값: Instance of Futre<String> (미래타입)
  // var data1 = fetchData();
  var data1 = await fetchData();
  print(data1.runtimeType);
  print("data1 : $data1");
  print("task2................");
  print("task3................");
}

Future<String> fetchData() {
  // return Future.delayed(const Duration(seconds: 2), () {
  //   return "2초 data";
  // } );
  return Future.delayed(const Duration(seconds: 2), () => "2초 data");
}
