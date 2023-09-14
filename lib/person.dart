void main() {
  // Person personUm = new Person();
  Person personUm = Person();
  personUm.myName = '엄준식';
  personUm.phone = '010-4444-4444';
  personUm.age = 20;
  personUm.displayInfo();
}

class Person {

  // 다트 2.2이후부터 nullable
  String? myName;
  String? phone;
  int? age;

  void displayInfo() {
    print('Person name : $myName');
    print('Phone number : $phone');
    print('Age : $age');
  }

}