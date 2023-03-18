import 'package:example0/first_page.dart';
import 'package:example0/second_page.dart';
import 'package:flutter/material.dart';

class BottomTabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomTabPageState();
  }
}

class _BottomTabPageState extends State<BottomTabPage> {
  int _currentIndex = 0;
  final _pageWidgets = [
    FirstPage(),
    FirstPage(),
    FirstPage(),
    FirstPage(),
    FirstPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(icon: Icon(Icons.edit_note), label: '予約一覧'),
          BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet), label: '予約する'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'お知らせ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'プロフィール'),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _currentIndex = index);
}
