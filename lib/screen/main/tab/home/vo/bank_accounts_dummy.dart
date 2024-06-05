import 'package:fast_app_base/screen/main/tab/home/vo/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000, accountTypeName: "신한 주거래 통장");
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 3000, accountTypeName: "저축예금");
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 3000, accountTypeName: "저축예금");
final bankAccountKakao = BankAccount(bankKakao, 3000);
final bankAccountToss = BankAccount(bankToss, 3000, accountTypeName: "입출금 통장");

main(){
  print('test');
}

//List
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss
];
