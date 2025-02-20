
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{

  String username;

  UserProvider({
    this.username="Abdullah",
  });

  void changeUserName({
    required String newName
  })async{
    username =newName;
    notifyListeners();
  }
  
}