import 'package:flutter/material.dart';
import 'package:growfood/theme.dart';
import 'Ensiklopedia_View.dart';
import 'Forum_View.dart';
import 'Profil_View.dart';
import 'Home_View.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;
  List pages = [
    const Home_View(),
    const Ensiklopedia_View(),
    const Forum_View(),
    const Profil_View()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 26,
        elevation: 10,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner), label: 'Ensiklopedia'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Forum'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: green1,
      ),
      body: pages[selectedIndex],
    );
  }
}
