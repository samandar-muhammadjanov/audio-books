import 'package:audio_books/config/theme/theme.dart';
import 'package:audio_books/presentation/pages/choose_genre_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Books',
      theme: AppTheme.light,
      home: const ChooseGenrePage(),
    );
  }
}
