abstract class Shape {
  double area() {
    return 0.0;
  }
}

// implements - 강제성이 있는 행동규약
class Circle implements Shape {

  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

}

class Rectangle implements Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);

  @override
  double area() {
    return width*height;
  }

}

void main() {
  List<Shape> shapes = [Circle(5.0), Rectangle(4.0, 5.0)];
  for (var e in shapes) {
    print(e.area());
  }}