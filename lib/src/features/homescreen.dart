import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persist_assignment/src/features/chat/chat.dart';
import 'package:persist_assignment/src/features/discover/discover.dart';
import 'package:persist_assignment/src/features/group/group.dart';
import 'package:persist_assignment/src/features/myclosest/mycloset.dart';
import 'package:persist_assignment/src/features/save/save.dart';


class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
     MyCloset(),
     Group(),
     Discover(),
     Save(),
    Chat(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: GoogleFonts.plusJakartaSans(color: Colors.black, fontSize: 15), // Selected label color
        // Unselected label color
        unselectedIconTheme: IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black, // Explicitly set unselected label color
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          buildBottomNavigationBarItem(Icons.person_outline, 'My Closet', 0),
          buildBottomNavigationBarItem(Icons.people_alt_outlined, 'Group', 1),
          buildBottomNavigationBarItem(Icons.home_outlined, 'Discover', 2),
          buildBottomNavigationBarItem(Icons.favorite_border, 'Saved', 3),
          buildBottomNavigationBarItem(Icons.chat_bubble_outline_outlined, 'Chat', 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_currentIndex == index ? 20.0 : 0.0),
          color: _currentIndex == index ? Colors.pinkAccent.withOpacity(.5) : null,
        ),
        padding: EdgeInsets.all(12),
        child: Icon(
          icon,
          color: _currentIndex == index ? Colors.black : null,
        ),
      ),
      label: label,
    );
  }
}

class PageWidget extends StatelessWidget {
final String title;
final Color color;

PageWidget(this.title, this.color);

@override
Widget build(BuildContext context) {
  return Container(
    color: color,
    child: Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
}