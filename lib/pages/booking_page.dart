import 'package:flutter/material.dart';
import 'detail_page.dart';

class BookingPage extends StatelessWidget {
  final List<String> bookings = [
    "Booking Hotel",
    "Booking Tiket",
    "Booking Salon",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Booking")),
      body: ListView.builder(
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(bookings[index]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: bookings[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}