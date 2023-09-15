// 일반 클래스를 사용한 방법

class Laptop {
  turnOn() {
    print("전원을 켭이다");
  }
  
  turnOff() {
    print("전원을 끕이다");
  }
}

class MacBook implements Laptop {
  @override
  turnOn() {
    print("맥북 전원을 켭이다");
  }
  
  @override
  turnOff() {
    print("맥북 전원을 끕이다");
  }
}

main() {
  MacBook book = MacBook();
  book.turnOn();
  book.turnOff();
}