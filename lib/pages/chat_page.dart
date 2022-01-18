import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo_project/models/chat_model.dart';

import 'chat_detail_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: chatData.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: NetworkImage(
                          chatData[i].avatar ?? 'image/no_image.jpg'),
                    ),
                    title: Text(
                      chatData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      chatData[i].message,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    trailing: Text(
                      chatData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                    onTap: () {
                      //print("Chat  Detail Open");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatDetailPage()));
                    },
                  ),
                ],
              )),
    );
  }
}
