import 'package:doctorapp/pages/doctorlist.dart';
import 'package:doctorapp/pages/newpage.dart';
import 'package:doctorapp/pages/specialistpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectindex = 0;
  List<Widget> pages = [SpecialistPage(), const NewPage()];
  void onTapped(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectindex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        currentIndex: 0,
        onTap: onTapped,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color(0xffF5B6BA),
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.description,
              ),
              label: ""),
          // BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: ""),
          // BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
        ],
        selectedItemColor: Colors.grey,
      ),
    );
  }
}
