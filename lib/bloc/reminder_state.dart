part of 'reminder_bloc.dart';

@immutable

class ReminderState {
 
  final List<ReminderModel> reminderModelListObj;
  const ReminderState({required this.reminderModelListObj});
 
}

class ReminderInitial extends ReminderState {

  ReminderInitial() : super(reminderModelListObj: [ReminderModel(eventIndex: 0, eventName: '', eventTime: '')]) {
     super.reminderModelListObj.removeAt(0);
    for (int i = 0; i <= 29; i ++) {

      super.reminderModelListObj.add(ReminderModel(eventIndex: i, eventName: '', eventTime: ''));
    }
  }

}

// class SelectTimeState extends ReminderState {
//   final TimeOfDay? eventTime;
//    const SelectTimeState({required this.eventTime});
// }
