class Fruit {
  String name;
  int price;

  Fruit(this.name, this.price);

  void showInfo() {
    print("이름 : $name");
    print("가격 : $price");
  }
}

class Peach extends Fruit{
  Peach(super.name, super.price);
}

class Banana extends Fruit{
  String origin;

  Banana(super.name, super.price, this.origin);
}
void main() {
  List<Fruit> fruits = [Banana("바나나몰", 5000, "일본"),
                        Peach("물복", 3000)];
  fruits[0].name;
  fruits[0].price;
  fruits[0].showInfo();
// fruits[0].origin 컴파일 시점에 선언된 데이터타입까지만 확인할 수 있다.
// 업 캐스팅 된 상태 바나나에 origin 변수에 접근하려면 컴파일 시점에 형 변환 해야함
// Banana banana1 = ((Banana) fruits[0]).origin; //자바에서 형 변환 했던 방법
  Banana banana1 = fruits[0] as Banana; // dart의 다운캐스팅
  print(banana1.origin);
}