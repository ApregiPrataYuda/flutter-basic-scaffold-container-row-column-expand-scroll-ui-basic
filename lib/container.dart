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


              body: Container(
                child: Text('Hello World ini adalah body dengan container', style: TextStyle(color: const Color.fromARGB(255, 10, 4, 4)), textAlign: TextAlign.center,),
                // color: Colors.blue,
                width: 100,
                height: 100,
                // padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                margin: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 240, 13, 13)), 
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),),
                ),
                
              ),


              bottomNavigationBar: BottomAppBar(child: Text('Bottom App Bar'),),
              floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add),
          ),
      ),
      );
   }
}