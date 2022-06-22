import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/data/quiz_brain.dart';

import 'package:quiz_app/pages/quiz_page/quiz_page.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => QuizBrain(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.green.shade50,
          body: const QuizPage(),
        ),
      ),
    );
  }
}
