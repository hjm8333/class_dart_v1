import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  String jsonStr = '''
    {
      "albumId": 1,
      "id": 1,
      "title": "accusamus beatae ad facilis cum similique qui sunt",
      "url": "https://via.placeholder.com/600/92c952",
      "thumbnailUrl": "https://via.placeholder.com/150/92c952"
    }
  ''';

  print("jsonStr1 제이슨맵------------------------------------");
  print("제이슨맵 : ${json.decode(jsonStr)}");
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    print("$key : $value");
  });

  print("jsonStr1 객체------------------------------------");
  Photo photo = Photo.fromJson(jsonMap);
  print("albumId : ${photo.albumId}");
  print("id : ${photo.id}");
  print("title : ${photo.title}");
  print("url : ${photo.url}");
  print("thumbnailUrl : ${photo.thumbnailUrl}");
  // 파싱 1 - Map 변환
  // 파싱 2 - 클래스 변환

  // String jsonStr2 = '''
  //   {
  //     "id": 1,
  //     "name": "Leanne Graham",
  //     "username": "Bret",
  //     "email": "Sincere@april.biz",
  //     "address": {
  //       "street": "Kulas Light",
  //       "suite": "Apt. 556",
  //       "city": "Gwenborough",
  //       "zipcode": "92998-3874",
  //       "geo": {
  //         "lat": "-37.3159",
  //         "lng": "81.1496"
  //       }
  //     },
  //     "phone": "1-770-736-8031 x56442",
  //     "website": "hildegard.org",
  //     "company": {
  //       "name": "Romaguera-Crona",
  //       "catchPhrase": "Multi-layered client-server neural-net",
  //       "bs": "harness real-time e-markets"
  //     }
  //   }
  // ''';

  http.Response response2 = await fetchUser();
  String jsonStr2 = response2.body;
  print("jsonStr2 제이슨맵------------------------------------");
  Map<String, dynamic> jsonMap2 = json.decode(jsonStr2);
  jsonMap2.forEach((key, value) {
    print("$key : $value");
  });

  print("jsonStr2 객체------------------------------------");

  Map<String, dynamic> companyMap = jsonMap2["company"];
  Map<String, dynamic> addressMap = jsonMap2["address"];
  Map<String, dynamic> geoMap = addressMap["geo"];

  Geo geo = Geo.fromJson(geoMap);
  Address address = Address.fromJson(addressMap, geo);
  Company company = Company.fromJson(companyMap);

  User user = User.fromJson(jsonMap2, address, company);
  print("id : ${user.id}");
  print("username : ${user.username}");
  print("email : ${user.email}");
  print("address-street : ${user.address.street}");
  print("address-suite : ${user.address.suite}");
  print("address-city : ${user.address.city}");
  print("address-zipcode : ${user.address.zipcode}");
  print("address-geo-lat : ${user.address.geo.lat}");
  print("address-geo-lng : ${user.address.geo.lng}");
  print("phone : ${user.phone}");
  print("website : ${user.website}");
  print("company-name : ${user.company.name}");
  print("company-catchPhrase : ${user.company.catchPhrase}");
  print("company-bs : ${user.company.bs}");

}

class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  Photo.fromJson(Map<String, dynamic> json)
  : albumId = json["albumId"],
    id = json["id"],
    title = json["title"],
    url = json["url"],
    thumbnailUrl = json["thumbnailUrl"];

}

class User {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  User(this.id, this.name, this.username, this.email, this.address, this.phone,
      this.website, this.company);

  User.fromJson(Map<String, dynamic> json, this.address, this.company)
      : id = json["id"],
        name = json["name"],
        username = json["username"],
        email = json["email"],
        phone = json["phone"],
        website = json["website"];
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  Address(this.street, this.suite, this.city, this.zipcode, this.geo);

  Address.fromJson(Map<String, dynamic> json, this.geo)
      : street = json["street"],
        suite = json["suite"],
        city = json["city"],
        zipcode = json["zipcode"];
}

class Geo {
  String lat;
  String lng;

  Geo(this.lat, this.lng);

  Geo.fromJson(Map<String, dynamic> json)
      : lat = json["lat"],
        lng = json["lng"];
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  Company(this.name, this.catchPhrase, this.bs);

  Company.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        catchPhrase = json["catchPhrase"],
        bs = json["bs"];
}

Future<http.Response> fetchUser() {
  const url = "https://jsonplaceholder.typicode.com/users/1";
  return http.get(Uri.parse(url));
}