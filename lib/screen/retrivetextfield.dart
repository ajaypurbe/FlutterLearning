import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String name = '';
  bool validate = false;

  //step-1
  TextEditingController mycontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    mycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Textfield Example'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            name = mycontroller.text;
            name.isEmpty ? validate = true : validate = false;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: mycontroller,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
                errorText: validate ? "field cannot be Empty" : null,
                errorStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  name = mycontroller.text;
                });
              },
              child: const Icon(Icons.arrow_forward),
            ),
            const SizedBox(height: 30),
            Text(
              name,
              textScaleFactor: 3,
            )
          ],
        ),
      ),
    );
  }
}
