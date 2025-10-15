import 'package:flutter/material.dart';

class FavariteScreens extends StatefulWidget {
  const FavariteScreens({super.key});

  @override
  State<FavariteScreens> createState() => _FavariteScreensState();
}

class _FavariteScreensState extends State<FavariteScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Favorite"),
      ),
    );
  }
}
