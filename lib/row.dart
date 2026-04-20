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
          home: Scaffold(appBar: AppBar(title: Text('Flutter Demo'),
          backgroundColor: Colors.teal,
          leading: Icon(Icons.menu,
          ),
          ),


              body:Row( 
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //  mainAxisAlignment: MainAxisAlignment.center,
                //  mainAxisAlignment: MainAxisAlignment.end,
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Container(width: 100, height: 100, color: Colors.red, padding: EdgeInsets.only(top: 40),),
                    Container(width: 100, height: 100, color: const Color.fromARGB(255, 54, 244, 155),),
                    Container(width: 100, height: 100, color: const Color.fromARGB(255, 21, 49, 139),),
                    Container(width: 100, height: 100, color: const Color.fromARGB(255, 212, 165, 9),),
                ],

               ),


              bottomNavigationBar: BottomAppBar(child: Text('Bottom App Bar'),),
              floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add),
          ),
      ),
      );
   }
}