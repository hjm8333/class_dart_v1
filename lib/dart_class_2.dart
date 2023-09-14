void main() {
  Rectangel rectangel = Rectangel();
  try {
    double result = rectangel.calculateArea();
    print("직사각형의 넓이는 : $result");
  } catch(e) {
    print('에러 확인 : $e');
  }


}

class Rectangel {
  double? width;
  double? height;

  double calculateArea() {
    return width! * height!; // !를 사용해 명시적으로 null이 아님을 명시 할 수 있음
  }
}