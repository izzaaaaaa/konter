import 'package:flutter/material.dart';
import 'package:notakonter/pages/home.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
void main()async {
  runApp(const MyApp());
  await Supabase.initialize(
    url : 'https://vsolweesecebnhxnzgec.supabase.co',
    anonKey : 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZzb2x3ZWVzZWNlYm5oeG56Z2VjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc5NTk3NzEsImV4cCI6MjA2MzUzNTc3MX0.5ys1ltJUKBpXP2uKlRwIkIL4BbhWig2JUuvtqU4-zQU',
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

