import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          //verticalDirection: VerticalDirection.up,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: double.infinity,
              color: Colors.red[50],
              child: const Text(
                'Container 1',
                textScaleFactor: 1.5,
              ),
            ),
            Container(
              width: 130,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.green,
                    child: Text("column 5"),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.yellow,
                    child: Text('container4'),
                  )
                ],
              ),
            ),
            Container(
              width: 130,
              height: double.infinity,
              color: Colors.red,
              child: const Text(
                'Container 3',
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
