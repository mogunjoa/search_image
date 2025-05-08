import 'package:go_router/go_router.dart';

import 'image_search/common/router.dart';

class FeaturesRouter {
  static GoRouter router = GoRouter(
    initialLocation: '/search',
    routes: [
      ImageSearchRouter.route, // 이미지 검색 페이지 라우트
    ],
  );
}
