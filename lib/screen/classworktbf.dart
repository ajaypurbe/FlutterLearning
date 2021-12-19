import 'package:flutter/material.dart';

class ClassWorktbf extends StatefulWidget {
  const ClassWorktbf({Key? key}) : super(key: key);

  @override
  _ClassWorktbfState createState() => _ClassWorktbfState();
}

class _ClassWorktbfState extends State<ClassWorktbf> {
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
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.phone,
              controller: mycontroller,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              decoration: InputDecoration(
                labelText: 'num1',
                hintText: 'Enter your first number',
                border: OutlineInputBorder(),
                errorText: validate ? "field cannot be Empty" : null,
                errorStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              keyboardType: TextInputType.phone,
              controller: mycontroller2,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              decoration: InputDecoration(
                labelText: ' num2',
                hintText: 'Enter your second number',
                border: OutlineInputBorder(),
                errorText: validate1 ? "field cannot be Empty" : null,
                errorStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text('SUM'),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      child: const Text(
                        'Result',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
