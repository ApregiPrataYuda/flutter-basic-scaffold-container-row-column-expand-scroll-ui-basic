import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext contect){

          return MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                    primarySwatch: Colors.blue,
                ),
                home: Scaffold(
                   appBar: AppBar(title: Text('Flutter Demo'), backgroundColor: Colors.teal,),
                   body: Center(
                     child: Text('Hello, World!'),
                   ),
                  //  bottomNavigationBar: Text('Bottom Navigation Bar'),
                  //   bottomNavigationBar: BottomAppBar(
                  //   shape: const CircularNotchedRectangle(),
                  //   child: Container(height: 50.0),
                  // ),
                  bottomNavigationBar: BottomAppBar(
  shape: CircularNotchedRectangle(), // biar ada lubang FAB
  notchMargin: 8.0, // jarak antara FAB & bar
  color: Colors.teal, // 🎨 background

  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconButton(
        icon: Icon(Icons.home, color: Colors.white),
        onPressed: () {
          print("Home");
        },
      ),
      IconButton(
        icon: Icon(Icons.search, color: Colors.white),
        onPressed: () {
          print("Search");
        },
      ),

      SizedBox(width: 40), // 🔥 space untuk FAB di tengah

      IconButton(
        icon: Icon(Icons.notifications, color: Colors.white),
        
        onPressed: () {
          print("Notif");
        },
      ),
      IconButton(
        icon: Icon(Icons.person, color: Colors.white),
        onPressed: () {
          print("Profile");
        },
      ),
    ],
  ),
),
                //    floatingActionButton: FloatingActionButton(
                //       child: Icon(Icons.add),
                //     onPressed: () => print('Floating Action Button pressed'),),
                // ),
              floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.teal, // 🎨 background FAB
              onPressed: () {},
              child: Icon(Icons.home, color: Colors.white),
            ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            ),
                
          );

    }
}