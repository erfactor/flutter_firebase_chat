import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:flutter/material.dart';

class PageAppBar extends StatelessWidget with PreferredSizeWidget {
  const PageAppBar({required this.text, this.actions});
  final String text;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: const Icon(Icons.chevron_left).center,
      ),
      centerTitle: false,
      title: Text(text, style: TS.medium16),
      titleSpacing: 0,
      toolbarHeight: 56,
      actions: [...?actions, Width16],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
