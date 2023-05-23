import 'package:flutter/material.dart';

class Days extends StatelessWidget {
  final List<String> days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  Days({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     // mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(days.length, (index) => Expanded(child: Text(days[index], textAlign: TextAlign.center,),),
      ),
    );
  }
}
