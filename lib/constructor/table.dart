class Table {

  String? name;
  String? color;

  Table({this.name, this.color});

  void display() {
    print("name : $name");
    print("color : $color");
  }

}

void main() {

  // Table table1 = Table("빠따", "갈색");
  Table table1 = Table(color: "은색", name: "빠따");
  table1.display();

}