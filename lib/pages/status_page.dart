import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo_project/models/status_model.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            backgroundImage: NetworkImage('image/no_image.jpg'),
          ),
          title: Text(
            'My Status',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Tab to status update',
            style: TextStyle(color: Colors.grey, fontSize: 15.0),
          ),
          onTap: () {
            print("My Own status open detail");
          },
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Recents Updates',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                   leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: NetworkImage(
                          statusData[i].avatar ?? 'image/no_image.jpg'),
                    ),
                    title: Text(
                      statusData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      statusData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    onTap: (){
                      print("Status open Details");
                    },
                ),
                Divider(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
