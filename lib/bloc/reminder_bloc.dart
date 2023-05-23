// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:task5_events_app/model/reminder_model.dart';

part 'reminder_event.dart';
part 'reminder_state.dart';

class ReminderBloc extends Bloc<ReminderEvent, ReminderState> {


  ReminderBloc() : super(ReminderInitial()) {

    on<SaveEvent>((event, emit) {

      state.reminderModelListObj[event.reminderModel.eventIndex] = event.reminderModel;

      var reminderState = ReminderState(reminderModelListObj: state.reminderModelListObj);
      emit(reminderState);    
      
      });

    // on<SelectTimeEvent>((event, emit) {

    //   print(event.eventTime);
    //   //emit(SelectTimeState(eventTime: event.eventTime));    
    //   emit(SelectTimeState(eventTime: event.eventTime));
      
    //   });

  }

}