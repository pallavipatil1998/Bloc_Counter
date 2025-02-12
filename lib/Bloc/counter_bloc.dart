import 'package:counter_bloc/Bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc(super.initialState){
    on<incrementCountEvent>((event,emit){
      emit(state+1);
    });

    on<decrementCountEvent>((event, emit){
     if(state>0){
       emit(state-1);
     }
    });


    // on<incrementCountEvent>((event,emit){
    //   emit(state+event.value);
    // });


  }
}
