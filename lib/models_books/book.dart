class Book {
  final String title;
  final String author;

  const Book({required this.title, required this.author});
}

const List<Book> catalog = [
  Book(title: 'Cien años de soledad', author: 'Gabriel García Márquez'),
  Book(title: 'Don Quijote de la Mancha', author: 'Miguel de Cervantes'),
  Book(title: 'La casa de los espíritus', author: 'Isabel Allende'),
  Book(title: 'Rayuela', author: 'Julio Cortázar'),
  Book(title: 'El amor en los tiempos del cólera', author: 'Gabriel García Márquez'),
  Book(title: 'Ficciones', author: 'Jorge Luis Borges'),
  Book(title: 'Pedro Páramo', author: 'Juan Rulfo'),
  Book(title: 'La ciudad y los perros', author: 'Mario Vargas Llosa'),
  Book(title: 'Sobre héroes y tumbas', author: 'Ernesto Sabato'),
  Book(title: 'El túnel', author: 'Ernesto Sabato'),
];