void main() {
  Employee employee1 = Employee("엄준식", 83);
  employee1.display();
  print("----------------------------");
  Employee employee2 = Employee("김찬호", 95, "데이트레이더", 50);
  employee2.display();
}

class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // 1.
  // 생성자 안의 [] - 옵션 값 : 받아도 되고 안받아도 되는 값
  // Employee(this.name, this.age, [this.subject, this.salary]);

  // 2.
  // 생성자 옵션에 기본값을 할당할 수 있다
  Employee(this.name, this.age, [this.subject = '무직백수', this.salary = 0]);

  void display() {
    print("Name : ${this.name}");
    print("Age : ${this.age}");
    print("Subject : ${this.subject}");
    print("Salary : ${this.salary}");
  }

}