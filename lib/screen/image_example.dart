import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Container(
                padding: const EdgeInsets.all(
                  10,
                ),
                child: Image.asset('images/A.JPG'),
              ),
            ),
            const Text(
              'Ajay Purbe',
              style: TextStyle(
                fontFamily: 'Pacifico-Regular',
                fontSize: 53,
                color: Colors.white,
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                  fontSize: 20, color: Colors.black, letterSpacing: 4),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30),
              // padding: EdgeInsets.all(20),
              // decoration: const BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.all(Radius.circular(5)),
              // ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.phone,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '9824704131',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              //padding: EdgeInsets.all(20),
              // decoration: const BoxDecoration(
              //   color: Colors.white,
              //   borderRadius: BorderRadius.all(Radius.circular(5)),
              // ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.email,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'purweaj@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
