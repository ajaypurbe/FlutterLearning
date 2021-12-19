import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.teal,
              child: const Text("Container1"),
            ),
            Positioned(
              right: 100,
              bottom: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Text("Container2"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: const Text("Container3"),
            )
          ],
        ),
      ),
    );
  }
}
