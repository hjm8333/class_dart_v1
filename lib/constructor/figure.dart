class Figure {

  double? width;
  double? height;
  double? radius;

  Figure({this.width, this.height, this.radius});

  void calculate() {
    if(height == null && radius == null) print("정사각형 넓이는 ${width!*width!}");
    else if(width == null && radius == null) print("정사각형 넓이는 ${height!*height!}");
    else if(radius == null) print("직사각형 넓이는 ${width!*height!}");
    else print("원의 넓이는 ${radius!*radius!*3.14}");
  }

}

void main() {
  Figure circle = Figure(radius: 5);
  Figure square = Figure(width: 10);
  Figure square2 = Figure(height: 10);
  Figure rectangle = Figure(width: 8, height: 8);
  circle.calculate();
  square.calculate();
  square2.calculate();
  rectangle.calculate();
}