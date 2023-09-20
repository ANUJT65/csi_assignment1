import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String name;
  final String email;

  const ResultScreen({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Name $name',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Email $email',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
