class Employee {
  // private 선언법 _ 언더스코어 사용
  int? _id; // private 속성
  String? _name;

  int getId() {
    return _id!;
  }

  String getName() {
    return _name!;
  }

  void setId(int id) {
    if(id < 0) {
      print("잘못된 값을 입력하셨읍니다");
    }
    this._id = id;
  }

  void setName(String name) {
    this._name = name;
  }

}