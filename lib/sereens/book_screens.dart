import 'package:flutter/material.dart';

class BookScreens extends StatefulWidget {
  const BookScreens({super.key});

  @override
  State<BookScreens> createState() => _BookScreensState();
}

class _BookScreensState extends State<BookScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: 
      AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Book "),
      ),
     
      
    );
  }
}
