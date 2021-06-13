import 'package:flutter/material.dart';

class GenderManager extends ChangeNotifier {

  GenderManager(){
    dropdownGender();
  }

  List<DropdownMenuItem<String>> genderList = [];

  String itemSelected = 'Todos';//initial value of the list

  dropdownGender() {//List item by gender
    genderList
        .add(DropdownMenuItem(child: Text('Todos', style: TextStyle(color: Colors.grey[500])), value: 'Todos'));
    genderList
        .add(DropdownMenuItem(child: Text('Masculino'), value: 'Male'));
    genderList
        .add(DropdownMenuItem(child: Text('Feminino'), value: 'Female'));

  }

  notifyListeners();

}