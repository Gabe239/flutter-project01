import 'package:flutter/material.dart';
import 'package:test2/components/Library/playlist.dart';
import 'package:test2/components/cattegoryButton.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage("assets/images/profile/profile.png"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Your Library',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildCategoryButton(
                        'Playlists', Color.fromARGB(255, 29, 29, 29)),
                    buildCategoryButton(
                        'Podcasts', Color.fromARGB(255, 29, 29, 29)),
                    buildCategoryButton(
                        'Albums', Color.fromARGB(255, 29, 29, 29)),
                    buildCategoryButton(
                        'Artists', Color.fromARGB(255, 29, 29, 29)),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Recents',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.view_module,
                        color: Colors.white,
                      ),
                      SizedBox(width: 6),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([Playlist(), Playlist(), Playlist()]),
            ),
          ),
        ],
      ),
    );
  }

}