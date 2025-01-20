import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/profile.dart';

class ProfileCard extends StatelessWidget {
  final Profile profile;

  ProfileCard({required this.profile});

  void _launchUrl(String url, String scheme) async {
    final Uri uri = Uri.parse('$scheme:$url');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(profile.avatarUrl),
            radius: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              profile.name,
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(profile.bio),
          ),
          SizedBox(height: 16.0),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(profile.phoneNumber),
            onTap: () => launchUrl(Uri.parse("tel:${profile.phoneNumber}")),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(profile.email),
            onTap: () => launchUrl(Uri.parse("mailto:${profile.email}")),
          ),
          ListTile(
            leading: Icon(Icons.link),
            title: Text('GitHub Profile'),
            onTap: () => launchUrl(Uri.parse("http://${profile.github}")),
          ),
        ],
      ),
    );
  }
}
