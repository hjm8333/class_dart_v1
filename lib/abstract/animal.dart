abstract class Animal {

  String name;
  Animal(this.name);
  void makeSound();

}

class Dog extends Animal {

  // 메모리에 Animal이 먼저 올라가야함. 초기화 이니셜라이저
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("$name이 짖읍니다 : 멍멍!");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("$name가 짖읍니다 : 야옹!");
  }
}

void main() {
  Dog dog = Dog("엄준식");
  Cat cat = Cat("김찬호");
  List<Animal> animals = [dog, cat];
  for (var e in animals) e.makeSound();
}