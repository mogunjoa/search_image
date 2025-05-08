import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_search/presentation/ui/home/home_screen.dart';

import 'core/AppBlocObserver.dart';

void main() {
  // Flutter 엔진과 위젯 바인딩 초기화
  WidgetsFlutterBinding.ensureInitialized();

  // Bloc Observer 설정(상태 변화 로깅)
  Bloc.observer = AppBlocObserver();

  runZonedGuarded(() {
    runApp(
      HomeScreen(),
    );
  }, (error, stackTrace) {
    // 에러 핸들링
    debugPrint('에러 발생: $error\n스택 트레이스: $stackTrace');
  });
}
