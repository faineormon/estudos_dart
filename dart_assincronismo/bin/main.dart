import 'package:http/http.dart';

void main() {
  // print("Olá mundo!");
  requestData();
}

requestData() {
  String url =
      "https://gist.githubusercontent.com/faineormon/7d38b85e767d4baad2f851de254d235a/raw/626046a8b68351bd19f9a4efe8d5a7cabf9a89d7/accounts.json";

  Future<Response> futureResponse = get(Uri.parse(url));

  futureResponse.then((Response response) {
    print(response.body);
  });
}
