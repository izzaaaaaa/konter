import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key,
    this.title = 'Notakonter',
  });


  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
    );
  }
}
