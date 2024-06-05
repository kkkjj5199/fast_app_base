import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank.dart';

class BankAccount {
  final Bank bank;
  int balance;
  final String? accountTypeName;

  BankAccount(
    this.bank,
    this.balance, {
    this.accountTypeName
  }

  );

//final --> 바뀌지 않음 vs int 변할수 있는것과 아닌것.
}
