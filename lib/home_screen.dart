import 'package:flutter/material.dart';
import 'package:task5_events_app/custom_calendar.dart';
import 'package:task5_events_app/days.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events app'),
      ),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.end,
        children: [
        
        const Text( 'Febuary 2023', style: TextStyle(fontSize: 20),),
        const SizedBox(height: 16,),
        Days(),
        const CustomCalendar(),
      ]),
    );
  }
}
