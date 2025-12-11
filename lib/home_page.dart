import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:gmail_app/gmail_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  //la page d'acceuil
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: GmailDrawer(),
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      body: Center(
        child: Text('Bienvenue sur Gmail'),
      ),
    );
  }
}



