import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task5_events_app/bloc/reminder_bloc.dart';
import 'package:task5_events_app/model/reminder_model.dart';

// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {
  const DetailScreen({required this.eventIndex, super.key});

  final int eventIndex;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final _nameController = TextEditingController();
  final _timeController = TextEditingController();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Event detail',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(label: Text('Event name')),
              ),
              const SizedBox(
                height: 20,
              ),
            
            
                 TextFormField(
                  controller: _timeController,
                  decoration: const InputDecoration(labelText: 'choose time'),
                  onTap: () async {
                      final TimeOfDay? time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                       if (time != null) {
                          // ignore: use_build_context_synchronously
                          _timeController.text = time.format(context); 
                       }   
                  },
                 ),
               
              const SizedBox(
                width: 20,
              ),
              // IconButton(
              //   onPressed: () async {
              //     final TimeOfDay? time = await showTimePicker(context: context, initialTime: selectedTime ?? TimeOfDay.now());
                 
              //     // ignore: use_build_context_synchronously
              //   //  context.read<ReminderBloc>().add(OnSelectTimeEvent(eventTime: selectedTime!.format(context)));
        
              //     // builder: (BuildContext context, Widget? child) {
        
              //     //   return Directionality(textDirection: TextDirection.rtl, child: child!);
              //     // },
              //     //);
        
              //     // setState(() {
              //       // selectedTime = time;
              //        // ignore: use_build_context_synchronously
              //           _timeController.text = time!.format(context);
              //     //  });
              //   },
              //   icon: const Icon(Icons.calendar_month),
             // ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
              
                      onPressed: () {
                        context.read<ReminderBloc>().add(SaveEvent(
                            reminderModel: ReminderModel(
                                eventIndex: widget.eventIndex,
                                eventName: _nameController.text,
                                eventTime: _timeController.text)));

                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Successfully added the event.')));
                        Navigator.pop(context);
                      },
                      child: const Text('Save')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
