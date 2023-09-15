mixin LoggingMixin {
  String tag = "LoggingMixin";
  // LoggingMixin(this.tag); // 믹스인은 생성자를 가질 수 없음

  void log(String message) {
    print("log - $tag : $message");
  }
}

class User with LoggingMixin {
  String name;
  User(this.name);
}

void main() {
  User user = User("엄준식");
  user.tag = "User";
  user.log("TEST USER CLASS");
}