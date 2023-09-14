void main() {
  DailyRoutine dailyRoutine1 = DailyRoutine('밥', '딸', '잠');
  dailyRoutine1.show();
  DailyRoutine dailyRoutine2 = DailyRoutine('딸', '밥딸', '딸잠', 2, 5, 8);
  dailyRoutine2.show();
}

class DailyRoutine {

  String? morning;
  int? morningHours;
  String? afternoon;
  int? afternoonHours;
  String? evening;
  int? eveningHours;

  DailyRoutine(this.morning, this.afternoon, this.evening, [this.morningHours = 1, this.afternoonHours = 1, this.eveningHours = 1]);
  void show() {
    print('아침$morning $morningHours시간');
    print('점심$afternoon $afternoonHours시간');
    print('저녁$evening $eveningHours시간');
  }
}