import 'package:flutter/material.dart';

import 'features/features_router.dart';

class ImageSearchApp extends StatelessWidget {
  const ImageSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: FeaturesRouter.router,
    );
  }
}
