import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
         title:  "Booking App",
         home: Scaffold(
             appBar: AppBar(
                      title: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.calendar_today, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            "Booking App",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 236, 234, 234),
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


                      body: Center(
                        child: ListView(
                                children: [
                                     Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pilih Tanggal",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            
                                            height: 120,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              
                                              children: [
                                                for (int i = 1; i <= 10; i++)
                                                  Container(
                                                    width: 100,
                                                    margin: EdgeInsets.all(8),
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Tanggal $i',
                                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),

                                          SizedBox(height: 20),

                                          Text(
                                            "Pilih Waktu",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            height: 120,
                                            child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                for (int i = 1; i <= 10; i++)
                                                  Container(
                                                    width: 100,
                                                    margin: EdgeInsets.all(8),
                                                    decoration: BoxDecoration(
                                                      color: Colors.green,
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Waktu $i',
                                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),

                                        ],
                                     )
                                ],
                        ),
                      ),

                      // untuk navbar bawah dengan FAB
                     bottomNavigationBar: BottomAppBar(
                              color: Colors.teal,
                              shape: CircularNotchedRectangle(),
                              notchMargin: 8,
                              child: SizedBox(
                                height: 60,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    // kiri
                                    IconButton(
                                      icon: Icon(Icons.home, color: Colors.white),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.calendar_today, color: Colors.white),
                                      onPressed: () {},
                                    ),

                                    SizedBox(width: 40), // space untuk FAB

                                    // kanan
                                    IconButton(
                                      icon: Icon(Icons.notifications, color: Colors.white),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.person, color: Colors.white),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // ini untuk floating action button
                       floatingActionButton: FloatingActionButton(
                        onPressed: () {
                          print("Tombol FAB ditekan!");
                        },
                        backgroundColor: Colors.teal,
                        elevation: 4, // kecilin biar nyatu
                        child: Icon(Icons.home, color: Colors.white),
                      ),
                        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                    
         )
      );

    }


}