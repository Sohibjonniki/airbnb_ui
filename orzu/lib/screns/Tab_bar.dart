import 'package:flutter/material.dart';
import 'package:orzu/screns/home_page.dart';
import 'package:orzu/screns/page_2.dart';
import 'package:orzu/screns/page_3.dart';
import 'package:orzu/screns/page_4.dart';
import 'package:orzu/screns/page_5.dart';



class TabBarbu extends StatefulWidget {
  const TabBarbu({super.key});

  @override
  State<TabBarbu> createState() => _TabBarbuState();
}

class _TabBarbuState extends State<TabBarbu> {
  int _currentIndex = 0;
  Color grey = const Color(0xff92929D);
  final List<dynamic> _screens = const [HomePage(),Page2(),Page3(),Page4(),Page5()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 238),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 93, 207, 40),
        unselectedItemColor: grey,
        backgroundColor: Color.fromARGB(255, 240, 240, 241),
        currentIndex: _currentIndex,
        items:  [
          BottomNavigationBarItem(icon:Icon(Icons.home) , label: "Главная"),
          BottomNavigationBarItem(icon:Icon(Icons.all_inclusive_sharp) , label: "Каталог"),
          BottomNavigationBarItem(icon:Icon(Icons.all_inclusive_sharp), label: "Корзина"),
          BottomNavigationBarItem(icon:Icon(Icons.all_inclusive_sharp), label: "Избранные"),
          BottomNavigationBarItem(icon:Icon(Icons.all_inclusive_sharp), label: "Войти"),

        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}

class SvgPictu {
}