import 'package:flutter/material.dart';

class SearchBooks extends StatefulWidget {
  const SearchBooks({super.key});

  @override
  State<SearchBooks> createState() => SearchBooksState();
}

class SearchBooksState extends State<SearchBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Buscar libros")),
    );
  }
}
