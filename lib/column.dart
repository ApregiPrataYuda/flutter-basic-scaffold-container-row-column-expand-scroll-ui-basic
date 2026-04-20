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
                body: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                            Container(width: 100, height: 100, color: Colors.red, padding: EdgeInsets.only(top: 40),),
                            Container(width: 100, height: 100, color: const Color.fromARGB(255, 54, 244, 155),),
                            Container(width: 100, height: 100, color: const Color.fromARGB(255, 21, 49, 139),),
                            Container(width: 100, height: 100, color: const Color.fromARGB(255, 212, 165, 9),),
                        ],
                      ),
                        Text('Hello World ini adalah body dengan column', style: TextStyle(color: const Color.fromARGB(255, 10, 4, 4)), textAlign: TextAlign.center,),
                        Container(width: 100, height: 100, color: const Color.fromARGB(255, 52, 7, 177), padding: EdgeInsets.only(top: 20),),
                        Container(width: 100, height: 100, color: const Color.fromARGB(255, 52, 7, 177), padding: EdgeInsets.only(top: 20),),
                        Container(width: 100, height: 100, color: const Color.fromARGB(255, 52, 7, 177), padding: EdgeInsets.only(top: 20),),
                  ],
                
                    
                ),


                bottomNavigationBar: BottomAppBar(child: Text('Bottom App Bar'),),
                floatingActionButton: FloatingActionButton(onPressed: () => print('Floating Action Button pressed'), child: Icon(Icons.add),
              ),
              ),
            );
      }
}
