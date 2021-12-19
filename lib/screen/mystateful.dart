import 'package:flutter/material.dart';

class MyStateful extends StatefulWidget {
  const MyStateful({Key? key}) : super(key: key);

  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(builder: (context) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                      print('your best friend name is $name');
                    },

                    // maxLength: 20, // to define the nuber of  character
                    // maxLines: null,
                    // textCapitalization: TextCapitalization.characters,
                    // keyboardType: TextInputType.phone,
                    // obscureText: true,
                    // obscuringCharacter: '*',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      icon: Icon(Icons.people),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text('your best friend name is $name ')
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
