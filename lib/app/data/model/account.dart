

import 'package:fryghthub/app/ui/theme/app_strings.dart';

class Account {
  String accountType;
  String firstName;
  String lastName;
  String email;
  String username;
  String phone;
  String address ;
  String password;

  Account(
      {this.accountType,
        this.firstName,
        this.lastName,
        this.email,
        this.username,
        this.phone,
        this.address,
        this.password});

  Account.fromJson(Map<String, String> json) {
    accountType = json['account_type'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    username = json['username'];
    phone = json['phone'];
    address = json['address'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, String>();
    data['account_type'] = this.accountType;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['username'] = this.username;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['password'] = this.password;
    return data;
  }
}