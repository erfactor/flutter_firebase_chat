import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/page_app_bar.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatelessWidget {
  const InboxPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageAppBar(text: 'Inbox'),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
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
