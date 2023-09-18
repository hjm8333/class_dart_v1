class MyClass {
    late String name;

    void printString() {
      print("name : $name");
    }

    MyClass() {
      name = "엄준식";
    }
}

void main() {
  final myObject = MyClass();
  myObject.printString();
}