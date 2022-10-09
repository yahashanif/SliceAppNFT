
import 'package:bloc/bloc.dart';

class TimeBloc extends Cubit<Duration>{
  TimeBloc() : super(Duration());

  void setDurasi(Duration durasi) {
    

    return emit(durasi);
  }

  void countDown(){
    return emit(state - Duration(seconds: 1));
  }
}