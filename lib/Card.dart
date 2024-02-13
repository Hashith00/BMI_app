import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1d1f33);

class NewCard extends StatelessWidget {
  final Color color;
  final Widget? childwidget;
  const NewCard({
    super.key, required this.color, this.childwidget
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: childwidget,
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),

    );
  }
}
