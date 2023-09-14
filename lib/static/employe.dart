class Employee {
  String name;
  static int num = 1;
  int myNum = num;

  Employee(this.name) {
    num++;
  }

  void display() {
    print("이름 : $name");
    print("사원 번호 : $myNum");
  }
}

void main() {
  // 제약 조건
  // Employee 클래스 안에 사원 번호 데이터를 받는 변수를 선언하십쇼
  // 단, Employee가 인스턴스화 되면(객체) 사원 번호는 자동으로 1씩 증가할 수 있도록

  Employee employee1 = Employee("엄준식");
  Employee employee2 = Employee("김찬호");
  Employee employee3 = Employee("손인욱");
  Employee employee4 = Employee("정상길");

  employee1.display();
  employee2.display();
  employee3.display();
  employee4.display();

}