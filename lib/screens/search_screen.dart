import 'package:flutter/material.dart';
import 'package:test2/components/Search/searchCards.dart';


class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage("assets/images/artists/artist1.jpg"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Search',
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Implement action for camera icon press
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5), // Add vertical spacing here
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
               // Set text color to black
              decoration: InputDecoration(
                hintText: 'What do you want to listen to?',
                hintStyle: TextStyle(fontSize: 14.0, color: Colors.black),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search, color: Colors.black), // Add search icon
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              ),
              onChanged: (value) {
                // Handle search query changes
              },
            ),
          ),
          SizedBox(height: 20), // Add more vertical spacing if needed
          Text(
            'Browse all',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          SearchCards()
        ],
      ),
    );
  }
}