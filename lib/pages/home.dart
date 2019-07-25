import 'dart:math';

import 'package:flutter_web/material.dart';

class HomePage extends StatelessWidget {
  final List<String> categories = [
    "Recently Played",
    "Your heavy rotation",
    "Keep the vibe going",
    "Your top podcasts",
    "Something something"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyScrollBehavior(),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.grey[850],
              floating: false,
              pinned: false,
              actions: [
                IconButton(icon: Icon(Icons.settings), onPressed: () {}),
              ],
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => CategorySection(title: categories[index]),
                childCount: categories.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}

final List<Color> colorss = [
  Colors.red,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.orange,
  Colors.pinkAccent
];

class CategorySection extends StatelessWidget {
  final String title;

  const CategorySection({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 175,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: colorss[Random().nextInt(5)],
                          height: 125,
                          width: 125,
                          child: Placeholder(),
                        ),
                        SizedBox(height: 10),
                        Text('Text')
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
