import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  final Map<String, String> book;

  const BookDetailPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book["title"]!)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(book["image"]!),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                book["title"]!,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Text(book["author"]!),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your purchase logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Added to cart!')),
                );
              },
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
