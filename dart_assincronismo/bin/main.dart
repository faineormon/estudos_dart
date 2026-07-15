import 'package:dart_assincronismo/screens/account_screen.dart';
import 'package:dart_assincronismo/services/transaction_service.dart';

void main() {
  AccountScreen accountScreen = AccountScreen();
  accountScreen.initializeStream();
  accountScreen.runChatBot();
  TransactionService().makeTransaction(
    idSender: "ID001",
    idReceiver: "ID002",
    amount: 10000,
  );
}
