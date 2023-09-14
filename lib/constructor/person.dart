class Person {
  String? name;
  int? age;
  String? phone;

  // 기본 생성자 dart에서는 축약 가능
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  Person(this.name, this.age);
  // Person(this.name, this.age, this.phone); // 다트는 오버로딩 안됨

  // 명명생성자
  Person.fromBirthYear(String name, int birthYear) {
    this.name = name;
    this.age = DateTime.now().year - birthYear;
  }
}
  void main() {
    Person person = Person("엄준식", 83);
    var person2 = Person("김찬호", 95);
    print(person.runtimeType);
    print(person2.runtimeType);

    // 명명된 생성자를 통해서 인스턴스 생성
    var person3 = Person.fromBirthYear("손인욱", 1937);
    print(person3);
    print(person3.age);
  }
