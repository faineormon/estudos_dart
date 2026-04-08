import 'package:http/http.dart';
import 'dart:convert';

void main() {
  // print("Olá mundo!");
  //requestData();
  requestDataAsync();
}

requestData() {
  String url =
      "https://gist.githubusercontent.com/faineormon/7d38b85e767d4baad2f851de254d235a/raw/626046a8b68351bd19f9a4efe8d5a7cabf9a89d7/accounts.json";

  Future<Response> futureResponse = get(Uri.parse(url));

  futureResponse.then((Response response) {
    //print(response.body);
    List<dynamic> listAccounts = json.decode(response.body);
    Map<String, dynamic> mapCarla = listAccounts.firstWhere(
      (element) => element["name"] == "Carla",
    );
    print(mapCarla["balance"]);
  });

  print("Ultima coisa a acontecer na função");
}

requestDataAsync() async {
  String url =
      "https://gist.githubusercontent.com/faineormon/7d38b85e767d4baad2f851de254d235a/raw/626046a8b68351bd19f9a4efe8d5a7cabf9a89d7/accounts.json";

  Response response = await get(Uri.parse(url));

  print(json.decode(response.body)[0]);
  print("De fato, a última coisa a acontecer na função.");
}
