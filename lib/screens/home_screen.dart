import 'package:flutter/material.dart';
import 'package:test2/components/recent.dart';
import 'package:test2/components/suggested.dart';
import 'package:test2/components/artists.dart';
import 'package:test2/components/release.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent, elevation: 0,
            pinned: true,
            expandedHeight: 100, // Adjust as needed
            flexibleSpace: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        AssetImage("assets/images/artists/artist1.jpg"),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Recent(),
                SizedBox(height: 20),
                Suggested(),
                SizedBox(height: 20),
                Artists(),
                SizedBox(height: 30),
                _buildArtistInfo("Artist Name"),
                SizedBox(height: 12),
                NewReleaseCard(
                  albumImage: "assets/images/albums/album15.png",
                  albumName: "Album Name",
                  albumDetails: "Details about the album...",
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration backgroundColor() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          const Color.fromARGB(255, 5, 40, 70),
          Colors.black,
          Colors.black,
        ],
        begin: Alignment.topCenter,
      ),
    );
  }

  Widget _buildArtistInfo(String artistName) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/artists/artist7.jpg"),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New release from",
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
            SizedBox(height: 4),
            Text(
              artistName,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
