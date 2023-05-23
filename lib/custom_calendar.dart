import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task5_events_app/bloc/reminder_bloc.dart';
import 'package:task5_events_app/detail_screen.dart';

class CustomCalendar extends StatelessWidget {
  const CustomCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ReminderBloc, ReminderState>(
        builder: (context, state) {
          return GridView.builder(
            itemCount: 30,
            // scrollDirection: Axis.horizontal,

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(eventIndex: index),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Text((index + 1).toString()),
                        // Text('${state.reminderModelListObj[index].eventName}    ${state.reminderModelListObj[index].eventTime}'),
                        
                          Text(state.reminderModelListObj[index].eventName, style: const TextStyle(color: Colors.white)),
                          const SizedBox( height: 10, ),
                       
                 
                            Text(state.reminderModelListObj[index].eventTime, style: const TextStyle(
                              fontSize: 10, color: Colors.black87),
                        ),
                      ],
                    ),
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

/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Events app'),
        
        
      ),
      body: BlocBuilder<ReminderBloc, ReminderState>(
        builder: (context, state) {
          return Container(
            child: Center(
              child: GridView.builder(
                itemCount: 30,
                // scrollDirection: Axis.horizontal,
          
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(eventIndex: index),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 100,
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text((index + 1).toString()),
                            Text('${state.reminderModelListObj[index].eventName}    ${state.reminderModelListObj[index].eventTime}'),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
*/