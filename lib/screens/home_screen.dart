import 'package:flutter/material.dart';
//import 'package:widgets_basic/constant/my_constance.dart'; // Import the file
import 'bottomnavbar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ... (your app bar code)
      ),
      body: Center(
        child: const Text(
          "HOME SCREEN",
          style: TextStyle(
            color:Colors.black,
            fontSize:40,
            fontWeight:FontWeight.w700,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavVar(),
    );
  }
}
