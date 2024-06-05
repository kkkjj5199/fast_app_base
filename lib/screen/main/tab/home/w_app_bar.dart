import 'package:flutter/material.dart';

class TtossaAppBar extends StatefulWidget {
  const TtossaAppBar({super.key});

  @override
  State<TtossaAppBar> createState() => _TtossaAppBarState();
}

class _TtossaAppBarState extends State<TtossaAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue,
    );
  }
}
