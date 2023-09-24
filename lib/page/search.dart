import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Computer Equipment'), backgroundColor:Color.fromARGB(255, 255, 81, 0) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Enter equipment name...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Search Results for: $searchQuery',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Add your search results widgets here
          ],
        ),
      ),
    );
  }
}
