import 'package:flutter/material.dart';

class NewReleaseCard extends StatelessWidget {
  final String albumImage;
  final String albumName;
  final String albumDetails;

  const NewReleaseCard({
    Key? key,
    required this.albumImage,
    required this.albumName,
    required this.albumDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 29, 29, 29),
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Album Image (Left Side, 1/3 of Card Width)
          Container(
            width:
                MediaQuery.of(context).size.width / 3, // Adjust width as needed
            height: 160, // Adjust height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage(albumImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Album Details (Right Side)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Album Name
                  Text(
                    albumName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4), // Add vertical spacing

                  // Album Details
                  Text(
                    albumDetails,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 12), // Add vertical spacing

                  // Action Icons (Play and Add)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Handle play action
                          print("Play pressed for $albumName");
                        },
                        icon: Icon(Icons.add_circle_outline),
                        color: Colors.grey,
                      ),
                      IconButton(
                        onPressed: () {
                          // Handle add action
                          print("Add pressed for $albumName");
                        },
                        icon: Image.asset('assets/images/icons/play.png',
                            width: 30, // Set width of the image
                            height: 30, // Set height of the image
                            color: Colors.white),
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
