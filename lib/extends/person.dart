class Person {

  String? name;
  int? age;

  void display() {
    print("name : $name");
    print("age : $age");
  }

}

class Student extends Person{
  String? schoolName;
  String? schoolAddress;

  void display() {
    print("name : $name");
    print("age : $age");
    print("schoolName : $schoolName");
    print("schoolAddress : $schoolAddress");
  }

}

void main() {
  Student student = Student();
  student.name = '엄준식';
  student.age = 30;
  student.schoolName = '다음팟';
  student.schoolAddress = '동탄';

  student.display();

}