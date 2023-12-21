import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank.dart';

class BankAccout {
  final Bank bank;
  int balance;
  final String? accountTypeName;

  BankAccout(
    this.bank,
    this.balance, {
    this.accountTypeName,
  });
}
