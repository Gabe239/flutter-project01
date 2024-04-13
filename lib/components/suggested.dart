import 'package:flutter/material.dart';

class Suggested extends StatelessWidget {
  final List<String> albumImages = [
    "assets/images/albums/album16.png",
    "assets/images/albums/album11.jpg",
    "assets/images/albums/album13.jpg",
    "assets/images/albums/album14.jpeg",
    "assets/images/albums/album17.jpeg",
    "assets/images/albums/album18.jpeg",
  ];

  final List<String> albumNames = [
    "Album 2",
    "Album 6",
    "Album 9",
    "Album 4",
    "Album 5",
    "Album 1",
  ];

  final List<String> albumDetails = [
    "Details 2",
    "Details 6",
    "Details 9",
    "Details 4",
    "Details 5",
    "Details 1",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Suggested for you",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: List.generate(albumImages.length, (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        albumImages[index],
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 8), // Add vertical spacing
                  Text(
                    albumNames[index],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4), // Add additional vertical spacing
                  Text(
                    albumDetails[index],
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}