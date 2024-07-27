import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spotifyflutterclone/common/helpers/navigation_helpers.dart';
import 'package:spotifyflutterclone/src/presentation/authentication/pages/authentication_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ElevatedButton(
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            nextScreenRemoveUntil(context, AuthenticationPage());
          },
          child: Text('Logout'),
        ),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
