import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  List<String> pics = [
    "assets/images/baby2.jpg",
    "assets/images/bear.jpg",
    "assets/images/baby.jpg",
    "assets/images/baby2.jpg",
    "assets/images/lion.jpg",
    "assets/images/mountain.jpg",
    "assets/images/baby.jpg",
  ];
  List<String> stories = [
    "Your Story..",
    "rajarani568",
    "charan_teju",
    "mr_unique12",
    "dads_girl56",
    "darlg_bujji.",
    "baby_doll8..",
  ];
  List<String> memes = [
    "assets/images/lion.jpg",
    "assets/images/bear.jpg",
    "assets/images/comedy.jpg",
    "assets/images/comedy2.jpg",
    "assets/images/lion.jpg",
    "assets/images/mountain.jpg",
    "assets/images/comedy1.jpg",
  ];
  List<String> names = [
    "varanaga_saisri1",
    "raja_the_great56",
    "charan_teja1256",
    "miss_uniqueness",
    "dads_girl_lovely",
    "darlg_bujji19798",
    "kanna_harshu14"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Instagram(),
              Container(
                  height: 120,
                  width: 400,
                  child: ListView.builder(
                      itemCount: 7,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Story(
                          img: pics[index],
                          title: stories[index],
                        );
                      })),
              Divider(height: 2.0, thickness: 1.0, color: Colors.black),
              Container(
                  height: 600,
                  width: 600,
                  child: ListView.builder(
                      itemCount: 7,
                      shrinkWrap: false,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Newsfeed(
                          img: memes[index],
                          title: names[index],
                        );
                      })),
              Divider(height: 1.0, thickness: 1.0, color: Colors.black38),
              End(),
            ],
          )),
        ),
      ),
    );
  }
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20, height: 12.0),
        Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(width: 180),
        Icon(Icons.search, size: 25, color: Colors.black),
        SizedBox(width: 18),
        Icon(Icons.import_contacts, size: 25, color: Colors.black),
      ],
    );
  }
}

class Story extends StatefulWidget {
  Story({this.img, this.title});
  final String img;
  final String title;
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          SizedBox(width: 12),
          Column(children: [
            CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(widget.img),
            ),
            Text(widget.title),
          ]),
        ],
      ),
    );
  }
}

class Newsfeed extends StatefulWidget {
  Newsfeed({this.img, this.title});
  final String img;
  final String title;
  @override
  _NewsfeedState createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          SizedBox(width: 12.0),
          CircleAvatar(
            radius: 12.0,
            backgroundImage: AssetImage(widget.img),
          ),
          SizedBox(width: 12.0),
          Text(widget.title),
          SizedBox(width: 220),
          Icon(Icons.menu),
        ]),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 400,
                  width: 600,
                  child: Image.asset(widget.img, fit: BoxFit.fill)),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.thumb_up_off_alt),
            Icon(Icons.comment),
            Icon(Icons.message),
            SizedBox(width: 120),
            Icon(Icons.bookmark_border),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.0),
            Text("104 likes"),
            Row(
              children: [
                SizedBox(height: 12.0, width: 12.0),
                CircleAvatar(
                  radius: 12.0,
                  backgroundImage: AssetImage("assets/images/baby2.jpg"),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add a comment...",
                      ),
                    ),
                  ),
                ),
                Icon(Icons.thumb_up),
                Icon(Icons.emoji_emotions),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 12.0),
                Text("34 mins ago"),
                Text(
                  ". See Translation",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}

class End extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.home_filled, size: 30.0),
        Icon(Icons.video_settings, size: 30.0),
        Icon(Icons.add_a_photo, size: 30.0),
        Icon(Icons.thumb_up, size: 30.0),
        CircleAvatar(
          radius: 16.0,
          backgroundImage: AssetImage("assets/images/baby2.jpg"),
        )
      ],
    );
  }
}
