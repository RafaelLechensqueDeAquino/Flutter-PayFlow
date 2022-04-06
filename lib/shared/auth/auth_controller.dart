import 'package:flutter/material.dart';
// import '../../module/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:payflow/module/home/home_page.dart';
import '../model/user_model.dart';

class AuthController{
  
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context,UserModel? user){
    if(user != null){
      saveUser(user);
      _user = user;
      
      Navigator.pushReplacementNamed(
        context, "/home", arguments: user
      );
    }else{
      
      Navigator.pushReplacementNamed(
        context,"/login"
      );
    }
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();

    await instance.setString("user", user.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(seconds: 3));

    if( instance.containsKey("user")){
      final json = instance.get("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    }else{
      setUser(context, null);
    }
  }
}
