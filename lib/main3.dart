import 'package:flutter_v1/biicycle.dart';

void main() {
  // 생성자는 인스턴스화 될 때 가장 먼저 실행되는 영역
  // 자바와 마찬가지로 기본 생성자는 dart 컴파일러가 알아서 넣어준다.
  Bicycle bicycle = Bicycle();
  bicycle.color = "용달블루";
  bicycle.size = 10;
  bicycle.currentSpeed = 10;
  bicycle.showInfo();
}