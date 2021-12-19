import 'package:flutter/material.dart';

class StackImage extends StatelessWidget {
  const StackImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('images/A.JPG'),
            const Positioned(
              right: 70,
              bottom: 40,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/A.JPG'),
              ),
            ),
            const Text(
              'Softwarica',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 40, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
