import 'package:go_router/go_router.dart';
import 'package:image_search/features/image_search/presentation/screen/search_screen.dart';

abstract class ImageSearchRouter {
  static GoRoute route = GoRoute(
    path: '/search',
    builder: (context, state) => const SearchScreen(),
  );
}
