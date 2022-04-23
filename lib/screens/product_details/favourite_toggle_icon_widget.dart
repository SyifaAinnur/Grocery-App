import 'package:flutter/material.dart';

class FavoriteToggleIcon extends StatefulWidget {
  const FavoriteToggleIcon({ Key? key }) : super(key: key);

  @override
  State<FavoriteToggleIcon> createState() => _FavoriteToggleIconState();
}

class _FavoriteToggleIconState extends State<FavoriteToggleIcon> {
    bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          favorite = !favorite;
        });
      },
      child: Icon(
        favorite ? Icons.favorite : Icons.favorite_border,
        color: favorite ? Colors.red : Colors.blueGrey,
        size: 30,
      ),
    );
  }
}