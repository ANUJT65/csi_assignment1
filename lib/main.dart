import 'package:flutter/material.dart';
import 'package:csi_assignment1/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form App'),
      ),
      body: const InputTab(),
    );
  }
}

class InputTab extends StatefulWidget {
  const InputTab({Key? key}) : super(key: key);

  @override
  _InputTabState createState() => _InputTabState();
}

class _InputTabState extends State<InputTab> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _submitForm(BuildContext context) {
    final name = _nameController.text;
    final email = _emailController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(name: name, email: email),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Enter your Name'),
          ),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Enter your Email'),
          ),
          ElevatedButton(
            onPressed: () {
              _submitForm(context);
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}

