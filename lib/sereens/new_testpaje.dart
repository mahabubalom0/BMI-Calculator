import 'package:flutter/material.dart';

class NewTestpaje extends StatelessWidget {
  const NewTestpaje({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Enter Your git "),
        leading: Icon(Icons.arrow_back),
        
      ),
      body: Container(height: 50,
      width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0)
        ),
      ),
    );
  }
}

