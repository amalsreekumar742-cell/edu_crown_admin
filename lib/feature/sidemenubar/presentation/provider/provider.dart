import 'package:flutter/material.dart';

class SidebarProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void changeMenu(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
