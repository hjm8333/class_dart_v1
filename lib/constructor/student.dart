class Student {

  String name;
  int age;
  int rollNumber;

  // 생성자가 있으면 nullable 하지않아도 오류 안일어남(무조건 값이 있어야 하므로)
  Student(this.name, this.age, this.rollNumber);

}