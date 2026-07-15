import 'dart:convert';

import 'package:dart_assincronismo/helpers/helper_taxes.dart';
import 'package:dart_assincronismo/models/account.dart';
import 'package:dart_assincronismo/models/transaction.dart';
import 'package:dart_assincronismo/services/account_service.dart';
import 'package:http/http.dart';

class TransactionService {
  AccountService _accountService = AccountService();

  String url = "https://api.github.com/gists/413c0aefe6c6abc464581c29029c8ace";

  makeTransaction(
      {required String idSender,
      required String idReceiver,
      required double amount}) async {
    List<Account> listAccount = await _accountService.getAll();

    Account senderAccount = listAccount.firstWhere((acc) => acc.id == idSender);

    Account receiverAccount =
        listAccount.firstWhere((acc) => acc.id == idReceiver);

    print(senderAccount);
    print(receiverAccount);
    print(calculateTaxesByAccount(sender: senderAccount, amount: amount));
  }

  Future<List<Transaction>> getAll() async {
    Response response = await get(Uri.parse(url));

    Map<String, dynamic> mapResponse = json.decode(response.body);
    List<dynamic> listDynamic =
        json.decode(mapResponse["files"]["transactions.json"]["content"]);

    List<Transaction> listTransactions = [];

    for (dynamic dyn in listDynamic) {
      Map<String, dynamic> mapTrans = dyn as Map<String, dynamic>;
      Transaction transaction = Transaction.fromMap(mapTrans);
      listTransactions.add(transaction);
    }

    return listTransactions;
  }

  addTransaction(Transaction trans) async {
    List<Transaction> listTransactions = await getAll();
    listTransactions.add(trans);
    save(listTransactions);
  }

  save(List<Transaction> listTransactions) async {
    List<Map<String, dynamic>> listMaps = [];

    for (Transaction trans in listTransactions) {
      listMaps.add(trans.toMap());
    }

    String content = json.encode(listMaps);

    await post(
      Uri.parse(url),
      headers: {
        //"Authorization": "Bearer $githubApiKey",
      },
      body: json.encode({
        "description": "accounts.json",
        "public": true,
        "files": {
          "transactions.json": {"content": content}
        }
      }),
    );
  }

  Future<void> makeTransaction({
    required String idSender,
    required String idReceiver,
    required double amount,
  }) async {
    List<Account> listAccounts = await _accountService.getAll();

    Account senderAccount =
        listAccounts.where((acc) => acc.id == idSender).first;

    Account receiverAccount =
        listAccounts.where((acc) => acc.id == idReceiver).first;
  }
}
