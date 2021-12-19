import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String name = '';
  String lname = '';
  bool validate1 = false;
  bool validate = false;

  //step-1
  TextEditingController mycontroller = TextEditingController();
  TextEditingController mycontroller2 = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    mycontroller.dispose();
    mycontroller2.dispose();
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
            lname = mycontroller2.text;
            lname.isEmpty ? validate1 = true : validate1 = false;
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
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              decoration: InputDecoration(
                labelText: 'First Name',
                hintText: 'Enter your first name',
                border: OutlineInputBorder(),
                errorText: validate ? "field cannot be Empty" : null,
                errorStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: mycontroller2,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              decoration: InputDecoration(
                labelText: 'last Name',
                hintText: 'Enter your last name',
                border: OutlineInputBorder(),
                errorText: validate1 ? "field cannot be Empty" : null,
                errorStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              name + ' ' + lname,
              textScaleFactor: 4,
            )
          ],
        ),
      ),
    );
  }
}
