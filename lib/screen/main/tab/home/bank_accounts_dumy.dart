import 'package:fast_app_base/screen/main/tab/home/banks_dumy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '신한 월급통장');
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 30000000, accountTypeName: '신한 저축예금');
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 30000000, accountTypeName: '신한 청년통장');
final bankAccountToss = BankAccount(bankToss, 5000000);
final bankAccountKakao =
    BankAccount(bankKakao, 7000000, accountTypeName: '카카오 입출금통장');

// List
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];

// Map
final bankMap = {
  "shinhan1": bankAccountShinhan1,
  "shinhan2": bankAccountShinhan2,
};

// Set
final bankSet = {
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao
};
