class Laptop {
  String name;
  String color;

  Laptop(this.name, this.color) {
    print("랩탑 생성자 호출");
  }

  void show() {
    print("이름 : $name, 색깔 : $color");
  }

}

class MacBook extends Laptop{
  int price;

  MacBook(name, color, this.price) : super(name, color) {
    print("초기화 이니셜라이즈에 body를 붙여서 코드를 쓸 수 있읍니다");
  }

  void show() {
    print("이름 : $name, 색깔 : $color, 가격 : $price");
  }

}

void main() {
  MacBook book = MacBook("프로", "용달블루", 5000000);
  book.show();
}