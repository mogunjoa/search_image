import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_search/presentation/ui/home/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: HomeScreen(),
    ),
  );
}
