import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/page_app_bar.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageAppBar(text: 'Inbox'),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(index.toString()),
            ),
          );
        },
      ),
    );
  }
}
