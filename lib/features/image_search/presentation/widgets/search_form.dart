import 'package:flutter/material.dart';

class SearchForm extends StatefulWidget {
  final EdgeInsetsGeometry padding;
  final ValueChanged<String> onSearch;

  const SearchForm({
    required this.padding,
    required this.onSearch,
    super.key,
  });

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              widget.onSearch(_searchController.text);
            },
          ),
        ),
        onSubmitted: (String value) {
          widget.onSearch(value);
        },
      ),
    );
  }
}
