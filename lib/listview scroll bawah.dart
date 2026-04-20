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
                       Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                            Text("AWAL"),
                            Container(width: 200, height: 300, margin: EdgeInsets.all(1), color: Colors.red, padding: EdgeInsets.only(top: 40),),
                            Container(width: 200, height: 300, margin: EdgeInsets.all(1), color: Colors.green, padding: EdgeInsets.only(top: 40),),
                            Container(width: 200, height: 300, margin: EdgeInsets.all(1), color: Colors.blue, padding: EdgeInsets.only(top: 40),),
                            Container(width: 200, height: 300, margin: EdgeInsets.all(1), color: Colors.yellow, padding: EdgeInsets.only(top: 40),),
                             Text("AKHIR"),
                      ],
                       ),

                       Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                            Text("AWAL"),
                            Container(width: 200, height: 300, margin: EdgeInsets.all(1), color: Colors.red, padding: EdgeInsets.only(top: 40),),
                            Container(width: 200, height: 300, margin: EdgeInsets.all(1), color: Colors.green, padding: EdgeInsets.only(top: 40),),
                            Container(width: 200, height: 300, margin: EdgeInsets.all(1), color: Colors.blue, padding: EdgeInsets.only(top: 40),),
                            Container(width: 200, height: 300, margin: EdgeInsets.all(1), color: Colors.yellow, padding: EdgeInsets.only(top: 40),),
                             Text("AKHIR"),
                      ],
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
