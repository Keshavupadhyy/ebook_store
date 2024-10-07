import 'package:flutter/material.dart';
import 'book_details_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> books = [
    {
      "title": "Flutter for Beginners",
      "author": "John Doe",
      "image": "https://via.placeholder.com/150"
    },
    {
      "title": "Advanced Flutter",
      "author": "Jane Smith",
      "image": "https://via.placeholder.com/150"
    },
    {
      "title": "Dart Programming",
      "author": "Alice Johnson",
      "image": "https://via.placeholder.com/150"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('eBook Store')),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemCount: books.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailPage(book: books[index]),
                ),
              );
            },
            child: Card(
              elevation: 8,
              child: Column(
                children: [
                  Image.network(books[index]["image"]!),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      books[index]["title"]!,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(books[index]["author"]!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
