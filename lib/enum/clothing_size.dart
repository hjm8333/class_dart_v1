enum ClotingSize { small, medium, large, xLarge, xxLarge }

enum TemperatureRange { freezing, cold, warm, hot }

void main() {
  var size = ClotingSize.large;
  print(size.runtimeType);

  switch(size) {
    case ClotingSize.small:
    print("6.9");
    break;
    case ClotingSize.medium:
    print("7.9");
    break;
    case ClotingSize.large:
    print("8.9");
    break;
    default:
  }
}