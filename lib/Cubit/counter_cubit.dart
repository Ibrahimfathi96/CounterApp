import 'package:basketball_counter_app/Cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit <CounterState>{


  int teamAPoints = 0;
  int teamBPoints = 0;
  int teamCPoints = 0;

  CounterCubit() : super(CounterIncrement());

  void teamPointsIncrement({ required String team , required int buttonNumber}){
    if(team == 'A'){
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    }else if(team == 'B') {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }else{
      teamCPoints += buttonNumber;
      emit(CounterCIncrementState());
    }
  }
  void teamPointsDecrement({ required String team , required int buttonNumber}){
    if(team == 'A'){
      teamAPoints -= buttonNumber;
      emit(CounterAIncrementState());
    }else if(team == 'B'){
      teamBPoints -= buttonNumber;
      emit(CounterBIncrementState());
    }else{
      teamCPoints -= buttonNumber;
      emit(CounterCIncrementState());
    }
  }

  void resetScore(){
    emit(CounterAIncrementState());
    emit(CounterBIncrementState());
    emit(CounterCIncrementState());
    teamBPoints = 0;
    teamAPoints = 0;
    teamCPoints = 0;
  }
}