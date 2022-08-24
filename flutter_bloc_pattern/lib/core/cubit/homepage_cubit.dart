import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/core/repo/homepage_repo.dart';

class OperationCubit extends Cubit<int> {
  OperationCubit() : super(0);

  var mathRepo = MathRepo();

  void plus(int sayi1, int sayi2) {
    emit(mathRepo.toplama(sayi1, sayi2));
  }

  void divided(int sayi1, int sayi2) {
    emit(mathRepo.bolme(sayi1, sayi2));
  }

  void minus(int sayi1, int sayi2) {
    emit(mathRepo.cikarma(sayi1, sayi2));
  }

  void multip(int sayi1, int sayi2) {
    emit(mathRepo.carpma(sayi1, sayi2));
  }
}
