import 'package:flutter_web/material.dart';
import 'package:spotify_mock_web/widgets/album_art.dart';
import 'package:spotify_mock_web/widgets/album_title.dart';
import 'package:spotify_mock_web/widgets/now_playing_top_bar.dart';

class NowPlayingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              NowPlayingTopBar(),
              SizedBox(height: 20),
              AlbumArt(),
              SizedBox(height: 30),
              AlbumTitle(),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: <Widget>[
                    Slider(
                      value: 15.0,
                      min: 0,
                      max: 30.0,
                      onChanged: (val) {},
                      inactiveColor: Colors.grey,
                      activeColor: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('1:38'),
                        Text('5:01'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.loop),
                    Icon(Icons.fast_rewind, size: 32),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      child: Icon(Icons.pause, color: Colors.black,),
                    ),
                    Icon(Icons.fast_forward, size: 32),
                    Icon(Icons.music_note)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
