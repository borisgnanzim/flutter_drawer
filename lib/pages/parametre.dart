import 'package:flutter/material.dart';

class Parametre extends StatelessWidget {
  const Parametre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Paramètre", style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Color.fromARGB(243, 73, 99, 129),
      ),
    );
  }
}
