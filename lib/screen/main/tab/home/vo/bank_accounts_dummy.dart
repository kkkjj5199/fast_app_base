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
final bankAccountToss2 = BankAccount(bankToss, 890000, accountTypeName: "입출금 통장");
final bankAccountToss3 = BankAccount(bankToss, 3000, accountTypeName: "입출금 통장");
final bankAccountToss4 = BankAccount(bankToss, 3000, accountTypeName: "입출금 통장");
final bankAccountToss5 = BankAccount(bankToss, 3000, accountTypeName: "입출금 통장");
final bankAccountToss6 = BankAccount(bankToss, 3000, accountTypeName: "입출금 통장");
final bankAccountToss7 = BankAccount(bankToss, 3000, accountTypeName: "입출금 통장");
final bankAccountToss8 = BankAccount(bankToss, 99999, accountTypeName: "입출금 통장");


main(){
  print('test');
}

//List
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss,
  bankAccountToss2,
  bankAccountToss3,
  bankAccountToss4,
  bankAccountToss5,
  bankAccountToss6,
  bankAccountToss7,
  bankAccountToss8,

];
