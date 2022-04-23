import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  void _logout() async {
    await FirebaseAuth.instance.signOut();
  }

  CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 40.0,
                bottom: 8.0,
              ),
              child: Icon(
                Icons.account_circle_rounded,
                size: 80,
              ),
            ),
            Text(
              user?.email ?? '',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => _logout(),
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red.withOpacity(0.6),
                ),
                child: const Center(
                  child: Text(
                    'Log out',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
