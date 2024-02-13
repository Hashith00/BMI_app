import 'package:flutter/material.dart';
import 'package:bmi_app/Card.dart';

const activeCardColor = Color(0xFF1d1f33);

class GenderCard extends StatelessWidget {
  final IconData iconName;
  final Color color;
  const GenderCard({
    super.key, required this.iconName, required this.color
  });

  @override
  Widget build(BuildContext context) {
    return NewCard(
      color: color,
      childwidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconName, size: 80,color:Colors.white ,),
          SizedBox(height: 10,),
          Text("Male", style: TextStyle(fontSize: 20, color: Color(0xFF8D8E98)),)
        ],
      ),
    );
  }
}
