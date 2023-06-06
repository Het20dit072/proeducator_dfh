import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:proeducator/Screens/dashboard.dart';
import 'package:proeducator/Screens/homescreen.dart';

import 'profile.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _currentIndex = 1;

  List<String> bottomNavBarIconPaths = [
    'assets/home.png',
    'assets/chat.png',
    'assets/dashboard.png',
    'assets/profile.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Chat Screen"),
      ),


  bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });

          // Navigate to different screens based on the selected index
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              // Navigate to HomeScreen
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen()));
              // Navigate to ChatScreen
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()));
              // Navigate to DashboardScreen
              break;
            case 3:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
              // Navigate to ProfileScreen
              break;
          }
        },
        items: List.generate(bottomNavBarIconPaths.length, (index) {
          return BottomNavigationBarItem(
            icon: Image.asset(
              bottomNavBarIconPaths[index],
              width: 24,
              height: 24,
            ),
            label: '',
          );
        }),
      ),
    );
  }
}
