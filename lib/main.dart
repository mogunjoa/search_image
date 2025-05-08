import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search/presentation/ui/home/home_screen.dart';

void main() {
  // Flutter 엔진과 위젯 바인딩 초기화
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded(() {
    runApp(
      HomeScreen(),
    );
  }, (error, stackTrace) {
    // 에러 핸들링
    debugPrint('에러 발생: $error\n스택 트레이스: $stackTrace');
  });
}
