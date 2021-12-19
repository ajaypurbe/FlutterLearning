import 'package:flutter/material.dart';

class CustomExampple extends StatelessWidget {
  const CustomExampple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text(
          'Ajay font testing',
          style: TextStyle(
            fontFamily: 'Pacifico-Regular',
            fontSize: 53,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
