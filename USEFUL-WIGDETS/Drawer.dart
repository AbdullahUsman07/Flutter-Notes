import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Widget'),
        elevation: 10.0,
        backgroundColor: Colors.redAccent,
      ),
      drawer: Drawer(
          backgroundColor: Colors.redAccent,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  child: Container(
                child: const Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/GoslingBFI081223_%2822_of_30%29_%2853388157347%29_%28cropped%29.jpg/220px-GoslingBFI081223_%2822_of_30%29_%2853388157347%29_%28cropped%29.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ryan Gosling"),
                        Text("ryan42@gmail.com"),
                      ],
                    ),
                  ],
                ),
              )),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Folders"),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text("My Uploads"),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text("My Recycle"),
              ),
              const ListTile(
                leading: Icon(Icons.email),
                title: Text("My Emails"),
              ),
              const ListTile(
                leading: Icon(Icons.contacts),
                title: Text("My Contacts"),
              ),
              const ListTile(
                leading: Icon(Icons.task),
                title: Text("My Tasks"),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              const ListTile(
                leading:Icon(Icons.logout),
                title:Text("Log Out"),
              ),
            ],
          )),
    );
  }
}
