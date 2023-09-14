class PassBook {
  String? _name;
  String? _accountNumber;
  int? _accountBalance;

  // 축약형 get,set 메서드 만들기
  // String getName() {
  //   return _name!;
  // }
  String? get name => _name; // 축약형
  String? get accountNumber => _accountNumber;
  int? get accountBalance => _accountBalance;

  set name(String? name) => _name = name;
  set accountNumber(String? accountNumber) => _accountNumber = accountNumber;
  set accountBalance(int? accountBalance) => _accountBalance = accountBalance;



  // private 변수는 명명매개변수로 만들 수 없음
  PassBook(this._name, this._accountNumber, this._accountBalance);

  void deposit(int money) {
    this._accountBalance  = (this._accountBalance ?? 0) + money;
    print("입금 완료");
  }

  int withdraw(int money) {
    int currentMoney = this._accountBalance ?? 0;
    if(currentMoney < money) {
      print("잔액 부족");
      return 0;
    } else {
      currentMoney -= money;
      this._accountBalance = currentMoney;
      return money;
    }
  }

}