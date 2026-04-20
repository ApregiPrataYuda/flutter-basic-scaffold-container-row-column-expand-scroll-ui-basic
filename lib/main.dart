import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/booking_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    BookingPage(),
    Center(child: Text("Notif Page")),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Booking App",
      home: Scaffold(
        extendBody: true, // biar FAB nyatu 🔥

        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.calendar_today, color: Colors.white),
              SizedBox(width: 8),
              Text(
                "Booking App",
                style: TextStyle(
                  color: Color.fromARGB(255, 236, 234, 234),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),

        // 🔥 body berubah sesuai menu
        body: _pages[_selectedIndex],

        // 🔻 BottomAppBar + menu
        bottomNavigationBar: BottomAppBar(
          color: Colors.teal,
          shape: CircularNotchedRectangle(),
          notchMargin: 8,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home, color: Colors.white),
                  onPressed: () {
                    setState(() => _selectedIndex = 0);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.calendar_today, color: Colors.white),
                  onPressed: () {
                    setState(() => _selectedIndex = 1);
                  },
                ),

                SizedBox(width: 40), // space FAB

                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.white),
                  onPressed: () {
                    setState(() => _selectedIndex = 2);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  onPressed: () {
                    setState(() => _selectedIndex = 3);
                  },
                ),
              ],
            ),
          ),
        ),

        // 🔘 FAB
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB ditekan");
          },
          backgroundColor: Colors.teal,
          child: Icon(Icons.home, color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}