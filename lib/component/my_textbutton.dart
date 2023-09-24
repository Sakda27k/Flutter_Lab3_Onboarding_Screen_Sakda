import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({Key? key, required this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Forgot password?',
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 20, 141, 239),
              ),
            ),
          ),
        ],
      ),
    );
  }
}