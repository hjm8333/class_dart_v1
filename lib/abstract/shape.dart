abstract class Shape {
  // 추상 메서드 선언
  double area(); // 메서드에 body가 없고 선언부만 있음

  void display() {
    print("This is a shape");
  }
}

// 자식 클래스는 보다 구체적인 클래스로 설계해야 함
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  void display() {
    print("원의 반지름 : $radius | 넓이 : ${area()}");
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  void display() {
    print("직사각형의 가로 : $width, 세로 $height | 넓이 : ${area()}");
  }

}

void main() {
  // 추상클래스는 new와 생성자 호출 불가(정의는 가능)
  // Shape shape = new Shape();

  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);

  Shape circle2 = Circle(5);
  Shape rectangle2 = Rectangle(4, 6);

  List<Shape> shapes = [circle, rectangle, circle2, rectangle2];

  for(var s in shapes) {
    s.display();
    print("-------------------------------------------------");
  }



}