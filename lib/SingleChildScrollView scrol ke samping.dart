
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
            body: SingleChildScrollView(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Ini judul di luar kotak',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),

      SizedBox(height: 10),

      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              for (int i = 1; i <= 10; i++)
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    // color: Colors.primaries[i % Colors.primaries.length],
                    border: Border.all(color: const Color.fromARGB(255, 75, 74, 74), width: 1),
                  ),
                  child: Center(
                    child: Text(
                      'Item $i',
                      style: TextStyle(color: const Color.fromARGB(255, 236, 234, 234), fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    ],
  ),
),


                bottomNavigationBar: BottomAppBar(child: Text('Bottom App Bar'),),
                floatingActionButton: FloatingActionButton(onPressed: () => print('Floating Action Button pressed'), child: Icon(Icons.add),
              ),
              ),
            );
      }
}
