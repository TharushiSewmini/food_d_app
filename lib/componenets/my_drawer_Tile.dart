import 'package:flutter/material.dart';

class MydrawerTile extends StatelessWidget {
  final String tileText;
  final IconData icon;
  final void Function()? onClick;
  const MydrawerTile(
      {super.key,
      required this.tileText,
      required this.icon,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      horizontalTitleGap: 10,
      dense: false,
      onTap: onClick,
      title: Text(
        tileText,
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
      leading: Icon(
        icon,
        size: 40,
      ),
    );
  }
}
