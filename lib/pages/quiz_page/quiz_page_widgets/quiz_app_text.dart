import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizAppText extends StatelessWidget {
  const QuizAppText({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Container(
      height: size.height * 0.35,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightGreen, Colors.green.shade700],
          begin: Alignment.bottomLeft,
          end: Alignment.topLeft,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding:
              orientation != Orientation.portrait ? EdgeInsets.zero : const EdgeInsets.only(top: 50.0),
              child: Text(
                'Quiz App',
                style: GoogleFonts.righteous(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.lightGreen.shade50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

