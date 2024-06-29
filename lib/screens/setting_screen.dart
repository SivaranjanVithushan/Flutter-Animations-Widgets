import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animations/screens/profile_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://placehold.it/150'),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Daphne Lisa'),
                      Text('Online', style: TextStyle(color: Colors.green)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const ListTile(
              title: Text('Edit Profile'),
              trailing: Icon(Icons.arrow_right),
            ),
            const ListTile(
              title: Text('Change Password'),
              trailing: Icon(Icons.arrow_right),
            ),
            const ListTile(
              title: Text('Push Notifications'),
            ),
            const Text('Other Settings'),
            const ListTile(
              title: Text('Privacy Policy'),
            ),
            const ListTile(
              title: Text('Terms & Conditions'),
              trailing: Icon(Icons.arrow_right),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Email me a Recovery Link'),
            ),
          ],
        ),
      )),
    );
  }
}
