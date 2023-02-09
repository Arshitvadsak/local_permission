import 'package:file_icon/file_icon.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Permission',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow[200],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.location.request();

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("$status"),
                      behavior: SnackBarBehavior.floating,
                    ));
                  },
                  icon: Icon(
                    Icons.location_on_outlined,
                    size: 30,
                  ),
                ),
                Text("Location"),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.contacts.request();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$status"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.content_paste_outlined,
                    size: 28,
                  ),
                ),
                Text("contacts"),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    PermissionStatus status = await Permission.camera.request();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$status"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                  ),
                ),
                Text("camera"),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.microphone.request();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$status"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.mic,
                    size: 30,
                  ),
                ),
                Text("Audio"),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.storage.request();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$status"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  icon: Icon(Icons.insert_drive_file_sharp)
                ),
                Text("storege"),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    PermissionStatus status =
                        await Permission.calendar.request();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$status"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.calendar_month,
                    size: 30,
                  ),
                ),
                Text("calendar"),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    PermissionStatus status = await Permission.sms.request();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$status"),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.sms,
                    size: 30,
                  ),
                ),
                Text("sms"),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () async{
                await openAppSettings();
              },
              child: Text(
                "ALL Permission",
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow[200]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
