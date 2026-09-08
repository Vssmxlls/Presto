import 'package:flutter/material.dart';

import '../models_books/book.dart';

class SearchBooks extends StatefulWidget {
  const SearchBooks({super.key});

  @override
  State<SearchBooks> createState() => _SearchBooksState();
}

class _SearchBooksState extends State<SearchBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar Libros"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: _CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: catalog.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.book),
            title: Text(catalog[index].title),
            subtitle: Text(catalog[index].author),
          );
        },
      ),
    );
  }
}

class _CustomSearchDelegate extends SearchDelegate {
  _CustomSearchDelegate();

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(onPressed: () => query = '', icon: const Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = _searchBooks(query);
    if (results.isEmpty) {
      return const Center(child: Text("Sin resultados"));
    }
    return _buildBookList(results);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = _searchBooks(query);
    if (query.isEmpty) {
      return const Center(child: Text("Escribe el nombre de un libro o autor"));
    }
    if (suggestions.isEmpty) {
      return const Center(child: Text("Sin coincidencias"));
    }
    return _buildBookList(suggestions);
  }

  List<Book> _searchBooks(String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) {
      return catalog;
    }
    return catalog
        .where(
          (book) =>
              book.title.toLowerCase().contains(q) ||
              book.author.toLowerCase().contains(q),
        )
        .toList();
  }

  Widget _buildBookList(List<Book> books) {
    return ListView.separated(
      itemCount: books.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final book = books[index];
        return ListTile(
          leading: const Icon(Icons.book),
          title: Text(book.title),
          subtitle: Text(book.author),
          onTap: () {
            close(context, book);
          },
        );
      },
    );
  }
}
