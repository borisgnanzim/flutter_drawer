import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications"),
        backgroundColor: Color.fromARGB(255, 18, 50, 92),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(),
          SizedBox(
            child: Text("Bonjour",
              style: TextStyle(color: Colors.green),
            ),

            //height: 23,
            //width: 34,
          ),
          SizedBox(
            child: Text("Bonjour", style: TextStyle(color: Colors.lightBlue),),
          ),

        ],
      ) ,
    );
  }
}
