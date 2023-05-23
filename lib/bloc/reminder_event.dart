part of 'reminder_bloc.dart';

@immutable
abstract class ReminderEvent {

}

class SaveEvent extends ReminderEvent {

  final ReminderModel reminderModel;
  SaveEvent({required this.reminderModel});
  
}




