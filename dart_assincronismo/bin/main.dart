import 'package:dart_assincronismo/api_key.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

void main() {
  StreamSubscription subscription = streamController.stream.listen((event) {
    print(event);
  });

  // print("Olá mundo!");
  //requestData();
  //requestDataAsync();
  /* sendDataAsync({
    "id": "ID011",
    "name": "Flutter",
    "lastName": "Dart",
    "balance": 5000,
  }); */
}

StreamController<String> streamController = StreamController<String>();

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
    //print(mapCarla["balance"]);
  });

  streamController.add("${DateTime.now()} | Requisição com Future");
}

Future<List<dynamic>> requestDataAsync() async {
  String url =
      "https://gist.githubusercontent.com/faineormon/7d38b85e767d4baad2f851de254d235a/raw/626046a8b68351bd19f9a4efe8d5a7cabf9a89d7/accounts.json";

  Response response = await get(Uri.parse(url));

  streamController.add("${DateTime.now()} | Requisição Assíncrona");
  return json.decode(response.body);

  /* print(json.decode(response.body)[0]);
  print("De fato, a última coisa a acontecer na função."); */
}

sendDataAsync(Map<String, dynamic> mapAccount) async {
  List<dynamic> listAccounts = await requestDataAsync();

  listAccounts.add(mapAccount);

  String content = json.encode(listAccounts);

  String url = "https://api.github.com/gists/7d38b85e767d4baad2f851de254d235a";

  Response response = await post(
    Uri.parse(url),
    headers: {"Authorization": "Bearer $githubApiKey"},
    body: json.encode({
      "description": "accounts.json",
      "public": true,
      "files": {
        "accounts.json": {"content": content},
      },
    }),
  );
  streamController.add("${DateTime.now()} | Adicionado ${toSend['name']}");
  //print(response.statusCode);
}
