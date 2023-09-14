class Animal {
  void eat() {
    print("먹이를 섭취하다");
  }
}

class Dog extends Animal{
  @override
  void eat() {
    print("개가 사료를 섭취하다");
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print("고양이가 사료를 섭취하다");
  }
}

void main() {
  Animal animal = Cat();
  Animal animal2 = Dog();

  List<Animal> animals = [animal, animal2];
  animals.forEach((e) => e.eat());
}