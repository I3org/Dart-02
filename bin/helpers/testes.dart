import 'dart:math';
import '../models/account.dart';
void main() {
  Account? myAccount;

// Simulando uma comunicação externa que pode ou não preencher myAccount
  Random rng = Random();
  if (rng.nextInt(10) % 2 == 0) {
    myAccount =
        Account(name: "Ricarth Lima", balance: 300, isAuthenticated: true);
  }
  print(myAccount.runtimeType);
  print(myAccount != null ? myAccount.balance : "Conta nula.");
}