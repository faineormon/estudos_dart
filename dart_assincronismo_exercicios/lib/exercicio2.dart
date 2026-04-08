import 'dart:convert';

import 'package:http/http.dart';

pesquisaLivroPorAutor(String autor) async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> listaLivros = json.decode(response.body);
  List<dynamic> livrosPorAutor = listaLivros
      .where((book) => book["author"] == autor)
      .toList();
  for (dynamic book in livrosPorAutor) {
    print("Título: ${book["title"]}");
  }
}

fetchRecipesAndFilter(List<String> listIngredients) async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/recipes.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> listRecipes = json.decode(response.body);

  List<String> listPossibleRecipes = [];

  for (dynamic recipeDyn in listRecipes) {
    Map<String, dynamic> recipe = recipeDyn as Map<String, dynamic>;
    List<dynamic> recipeIngredients = recipe["ingredients"];

    bool containsAllIngredients = listIngredients.every((ingredient) {
      bool isContainsIngredient = false;
      for (String recipeIngredient in recipeIngredients) {
        if (recipeIngredient.toLowerCase().contains(ingredient.toLowerCase())) {
          isContainsIngredient = true;
          break;
        }
      }
      return isContainsIngredient;
    });

    if (containsAllIngredients) {
      listPossibleRecipes.add(recipe["name"]);
    }
  }

  for (String recipe in listPossibleRecipes) {
    print("Receita: $recipe");
  }
}

fetchPlayerAndMakeTeams() async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/players.json";
  Response response = await get(Uri.parse(url));

  Map<String, dynamic> mapPlayers = json.decode(response.body);

  int playersPerTeam = mapPlayers["rules"]["playersPerTeam"];

  List<dynamic> listPlayers = mapPlayers["players"];

  listPlayers.sort(
    (a, b) => (b["roundsWaiting"] as int).compareTo(a["roundsWaiting"]),
  );

  List<dynamic> listFirstTeam = listPlayers.sublist(0, playersPerTeam);
  List<dynamic> listSecondTeam = listPlayers.sublist(
    playersPerTeam,
    playersPerTeam * 2,
  );

  print("**Time A**");
  for (Map<String, dynamic> person in listFirstTeam) {
    print(person["name"]);
  }

  print("\n**Time B**");
  for (Map<String, dynamic> person in listSecondTeam) {
    print(person["name"]);
  }

  fetchPlayerAndMakeTeams() async {
    String url =
        "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/players.json";
    Response response = await get(Uri.parse(url));

    Map<String, dynamic> mapPlayers = json.decode(response.body);

    int playersPerTeam = mapPlayers["rules"]["playersPerTeam"];

    List<dynamic> listPlayers = mapPlayers["players"];
    listPlayers.sort(
      (a, b) => (b["roundsWaiting"] as int).compareTo(a["roundsWaiting"]),
    );

    List<dynamic> listFirstTeam = listPlayers.sublist(0, playersPerTeam);
    List<dynamic> listSecondTeam = listPlayers.sublist(
      playersPerTeam,
      playersPerTeam * 2,
    );

    print("**Time A**");
    for (Map<String, dynamic> person in listFirstTeam) {
      print(person["name"]);
    }

    print("\n**Time B**");
    for (Map<String, dynamic> person in listSecondTeam) {
      print(person["name"]);
    }
  }
}

fetchVetAndSchedule(String veterinarian) async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/vet.json";
  Response response = await get(Uri.parse(url));
  List<dynamic> listAppointments = json.decode(response.body);

  List<dynamic> vetAppointments = listAppointments
      .where((appointment) => appointment["veterinarian"] == veterinarian)
      .toList();

  vetAppointments.sort(
    (a, b) => DateTime.parse(
      a["appointment"],
    ).compareTo(DateTime.parse(b["appointment"])),
  );

  print("Consultas Agendadas para $veterinarian:");
  for (Map<String, dynamic> appointment in vetAppointments) {
    print(
      "Pet: ${appointment["pet_name"]} - Horário: ${appointment["appointment"]}",
    );
  }
}
