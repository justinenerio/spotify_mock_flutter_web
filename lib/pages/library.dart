import 'dart:math';

import 'package:flutter_web/material.dart';
import 'package:spotify_mock_web/pages/home.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  bool _isMusic = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: MyScrollBehavior(),
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  primary: true,
                  backgroundColor: Colors.grey[850],
                  floating: false,
                  pinned: false,
                  title: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isMusic = true;
                          });
                        },
                        child: Text("Music",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: _isMusic ? Colors.white : Colors.grey)),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isMusic = false;
                          });
                        },
                        child: Text("Podcasts",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: _isMusic ? Colors.grey : Colors.white)),
                      ),
                    ],
                  ),
                )
              ];
            },
            body: _isMusic ? MusicBody() : PodcastBody(),
          ),
        ),
      ),
    );
  }
}

class MusicBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.grey[850],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 8,
                ),
                TabBar(
                  indicatorColor: Colors.green,
                  isScrollable: true,
                  tabs: [
                    Container(
                      child: Text("Playlists"),
                      height: 25,
                    ),
                    Container(
                      child: Text("Artist"),
                      height: 25,
                    ),
                    Container(
                      child: Text("Albums"),
                      height: 25,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[PlaylistMusic(), ArtistsMusic(), AlbumsMusic()],
        ),
      ),
    );
  }
}

class PlaylistMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        primary: false,
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              margin: EdgeInsets.fromLTRB(8, 4, 8, 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.search),
                          SizedBox(width: 10),
                          Text("Find in playlists")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(4)),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Center(
                      child: Text("Filters"),
                    ),
                  )
                ],
              ),
            );
          } else if (index == 1) {
            return Container(
              margin: EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  color: Colors.grey[900],
                  child: Center(
                    child: Icon(Icons.add),
                  ),
                ),
                title: Text("Create Playlist"),
              ),
            );
          } else if (index == 2) {
            return Container(
              margin: EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  color: Colors.grey[900],
                  child: Center(
                    child: Icon(Icons.favorite),
                  ),
                ),
                title: Text("Liked Songs"),
              ),
            );
          } else {
            return Container(
              margin: EdgeInsets.only(bottom: 2.0),
              child: ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  color: colorss[Random().nextInt(5)],
                ),
                subtitle: Text("by Test Person"),
                title: Text("Album #${index - 2}"),
              ),
            );
          }
        },
      ),
    );
  }
}

class ArtistsMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AlbumsMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//////////////////////////

class PodcastBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.grey[850],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 8,
                ),
                TabBar(
                  indicatorColor: Colors.green,
                  isScrollable: true,
                  tabs: [
                    Container(
                      child: Text("Episodes"),
                      height: 25,
                    ),
                    Container(
                      child: Text("Downloads"),
                      height: 25,
                    ),
                    Container(
                      child: Text("Shows"),
                      height: 25,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            EpisodesPodcasts(),
            DownloadPodcasts(),
            ShowsPodcasts()
          ],
        ),
      ),
    );
  }
}

class EpisodesPodcasts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DownloadPodcasts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ShowsPodcasts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
