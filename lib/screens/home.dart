import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ted/models/post.dart';
import 'package:ted/repo/post_operations.dart';

class Home extends StatelessWidget {
  List<Post> posts = [];
  Home() {
    PostOperations opr = PostOperations.getInstance();
    posts = opr.getPosts();
  }

  _getAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: const [
        Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ))
      ],
      title: Row(children: [
        Text('TED',
            style: GoogleFonts.poppins(
                color: Colors.redAccent, fontWeight: FontWeight.w900)),
        const SizedBox(
          width: 5,
        ),
        const Text("Newest", style: TextStyle(color: Colors.redAccent)),
        const Icon(
          Icons.arrow_drop_down,
          color: Colors.redAccent,
        )
      ]),
    );
  }

  _getStyle(Color color,
      {double fontSize = 17, FontWeight fw = FontWeight.normal}) {
    return TextStyle(color: color, fontSize: fontSize, fontWeight: fw);
  }

  List<Widget> _prepareTedPost(Size deviceSize) {
    List<Widget> list = posts.map((post) {
      return Stack(children: [
        Card(
            child: Image.network(
                post.imageURL)),
        Positioned(
            width: deviceSize.width - 20,
            bottom: 10,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(post.author, style: _getStyle(Colors.white)),
                    Text(post.title,
                        style: _getStyle(Colors.white, fw: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    Text(post.time, style: _getStyle(Colors.white)),
                  ],
                ),
              ],
            ))
      ]);
    }).toList();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _getAppBar(),
      body: SingleChildScrollView(child: Column(children: _prepareTedPost(deviceSize))),
    );
  }
}
