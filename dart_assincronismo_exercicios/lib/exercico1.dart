import 'package:http/http.dart';

Future<void> fetchRecipes() async {
  String url =
      "https://gist.githubusercontent.com/faineormon/20528fa2b5404a1ca15d475bc9d3a120/raw/f6984c3da345ec92538647d85f86caa17e7f8156/recipes.json";
  Uri uri = Uri.parse(url);

  get(uri).then((Response response) {
    print(response.body);
  });
}
