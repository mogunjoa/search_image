import 'package:flutter/material.dart';
import 'package:image_search/features/image_search/presentation/widgets/search_form.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Image Search'),
          ),
        ),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SearchForm(
                  padding: const EdgeInsets.all(16),
                  onSearch: (String query) {
                    // Handle search action
                    print('Searching for: $query');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


