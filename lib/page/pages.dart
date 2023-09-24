import 'package:flutter/material.dart';



class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'), backgroundColor:Color.fromARGB(255, 255, 81, 0) ,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage('lib/assets/cat-guys-have-bad-news-theronswag-woke-up-again.jpeg'), // Replace with your image URL
          ),
          SizedBox(height: 20),
          Text(
            '@Sakda', // Replace with the user's name
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Admin', // Replace with the user's occupation
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('AdminSakda@kmutnb.com'), // Replace with the user's email
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('+123 456 7890'), // Replace with the user's phone number
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Bio: I love coding.', // User's bio
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}