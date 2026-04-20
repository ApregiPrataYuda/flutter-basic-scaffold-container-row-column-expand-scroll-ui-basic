
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
      MyApp({Key? key}) : super(key: key);
      @override

      Widget build(BuildContext context) {
            return MaterialApp(
              title: 'Flutter Demo',
              home: Scaffold(
                appBar: AppBar(
                  title: Text('Flutter Demo'), 
                  iconTheme: IconThemeData(color: Colors.white), 
                  backgroundColor: Colors.teal, 
                  leading: Icon(Icons.menu),
                  centerTitle: true,
                ),
               body: ListView(
  children: [
    Container(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 1; i <= 10; i++)
            Container(
              width: 100,
              margin: EdgeInsets.all(8),
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Item $i',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      ),
    ),

    Container(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
         for (int i = 1; i <= 10; i++)
            Container(
              width: 100,
              margin: EdgeInsets.all(8),
              color: Colors.green,
              child: Center(
                child: Text(
                  'Item $i',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      ),
    ),
  ],
),


                bottomNavigationBar: BottomAppBar(child: Text('Bottom App Bar'),),
                floatingActionButton: FloatingActionButton(onPressed: () => print('Floating Action Button pressed'), child: Icon(Icons.add),
              ),
              ),
            );
      }
}
