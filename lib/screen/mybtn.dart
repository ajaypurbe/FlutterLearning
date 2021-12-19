import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button Example')),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: const Text('click'),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                side: const BorderSide(width: 5, color: Colors.yellow),
                minimumSize: const Size(100, 50),
                primary: Colors.white,
                backgroundColor: Colors.red,
                elevation: 20,
                shadowColor: Colors.black,
                textStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated'),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                primary: Colors.red,
                minimumSize: const Size(100, 50),
                elevation: 20,
                shadowColor: Colors.black,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
          ElevatedButton(onPressed: () {}, child: const Icon(Icons.wifi)),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.people),
              label: const Text('click'))
        ],
      )),
    );
  }
}
