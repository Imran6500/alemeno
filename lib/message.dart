import 'package:flutter/material.dart';

// ignore: camel_case_types
class message extends StatelessWidget {
  const message({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'G O O D  J O B',
          style: TextStyle(
              fontFamily: 'lilita', fontSize: 48, color: Colors.green),
        ),
      ),
    );
  }
}
