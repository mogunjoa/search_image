
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver();
  final logger = Logger();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) logger.i('[Cubit] state change $change');
  }

  @override
  void onTransition(
      Bloc<dynamic, dynamic> bloc,
      Transition<dynamic, dynamic> transition,
      ) {
    super.onTransition(bloc, transition);

    logger.i('[Bloc] transition $transition');
  }
}
