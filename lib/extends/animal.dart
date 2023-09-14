class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void speak() {
    print("$name is making a sound");
  }
}

class Dog extends Animal{

  String? breed;

  // // 다트에선 못씀
  // Dog(String name, int age) {
  //   super(name, age);
  // };

  // 초기화 이니셜라이저(initializer)
  Dog(name, age, this.breed) : super(name, age);

  void speak() {
    print("$name이 짖었읍니다");
  }

}

void main() {
  Dog dog = Dog('엄준식', 3, '유사인류');
  dog.speak();
  
}