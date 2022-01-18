import 'package:flutter/material.dart';

import 'message_page.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('images/no_image.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Ariyan"),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Video Call  Button Clicked");
            },
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {
              print(" Call  Button Clicked");
            },
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {
              print("Three dot Button Clicked");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Flexible(
                      child: TextFormField(
                    minLines: 1,
                    maxLength: 8,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.0,
                        ),
                      ),
                      hintText: 'Type a message',
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
