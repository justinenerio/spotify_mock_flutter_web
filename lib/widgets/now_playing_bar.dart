import 'package:flutter_web/material.dart';
import 'package:spotify_mock_web/pages/now_playing.dart';

class NowPlayingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NowPlayingPage()),
        );
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(color: Theme.of(context).dividerColor),
          bottom: BorderSide(color: Theme.of(context).dividerColor),
        )),
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.arrow_upward),
            Expanded(
              child: Center(
                child: Container(
                  child: Text('Music something title - This is Author #1'),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                      style: BorderStyle.solid)),
              child: Icon(Icons.pause),
            ),
          ],
        ),
      ),
    );
  }
}
