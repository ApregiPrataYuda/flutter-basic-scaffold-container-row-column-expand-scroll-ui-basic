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
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  
                        Row(
                          
                             children: [
                               
                                Expanded(
                                  flex: 1,
                                
                                  child: Container(width: 100, 
                                  child: Text('bidang 1', style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                                  height: 100, 
                                  color: const Color.fromARGB(255, 244, 54, 70), 
                                  padding: EdgeInsets.only(top: 40),),),
                  
                                Expanded(
                                  flex: 1,
                                  child: Container(width: 100, 
                                   child: Text('bidang 2', style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                                  height: 100, 
                                  color: const Color.fromARGB(255, 70, 244, 54), 
                                  padding: EdgeInsets.only(top: 40),)),
                  
                                Expanded(
                                  flex: 1,
                                  child: Container(width: 100, 
                                  child: Text('bidang 3', style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                                  height: 100, 
                                  color: const Color.fromARGB(255, 244, 114, 54), 
                                  padding: EdgeInsets.only(top: 40),)),
                             ],
                        ),
                     
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
                          Container(width: 100, height: 100, color: const Color.fromARGB(255, 52, 7, 177),  margin: EdgeInsets.all(10), padding: EdgeInsets.only(top: 20),),
                          Container(width: 100, height: 100, color: const Color.fromARGB(255, 52, 7, 177), margin: EdgeInsets.all(10), padding: EdgeInsets.only(top: 20),),
                          Container(width: 100, height: 100, color: const Color.fromARGB(255, 52, 7, 177), margin: EdgeInsets.all(10), padding: EdgeInsets.only(top: 20),),
                          Container(width: 100, height: 100, color: const Color.fromARGB(255, 52, 7, 177), margin: EdgeInsets.all(10), padding: EdgeInsets.only(top: 20),),
                          Container(width: 100, height: 100, color: const Color.fromARGB(255, 52, 7, 177), margin: EdgeInsets.all(10), padding: EdgeInsets.only(top: 20),),
                           Text('Text Akhir', style: TextStyle(color: const Color.fromARGB(255, 10, 4, 4)), textAlign: TextAlign.center,),
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
