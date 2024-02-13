import 'package:flutter/material.dart';
import 'package:bmi_app/inputPage.dart';




Widget StatusOFResult(double bmi) {
  if (bmi < 18.5) {
    return const Text(
      "Underweight",
      style: TextStyle(
        color: Color(0xFFEB1555),
      ),
    );
  } else if (bmi >= 18.5 && bmi < 24.5) {
    return const Text('Healthy', style: TextStyle(color: Colors.greenAccent,),);
  } else {
    return const Text(
      "Obecity",
      style: TextStyle(
        color: Color(0xFFEB1555),
      ),
    );
  }
}

class resultPage extends StatefulWidget {
  const resultPage({super.key});

  @override
  State<resultPage> createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {

  double shownValue = double.parse((((weight / (height * height))) * 10000).toStringAsFixed(2));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator"),),
      body: SafeArea(
        child: Column(

          children: [
            const Center(
                child: Text(
              "Your Results",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            )),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                    color: Color(0xFF1d1f33),
                    height:500,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StatusOFResult(shownValue),
                        Text(
                          shownValue.toString(),
                          style: TextStyle(fontSize: 60, fontWeight: FontWeight.w800),
                        ),
                        Text("Your health is good as the BMI is in good range",)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 70,
                            width: double.infinity,
                            color: Color(0xFFEB1555),
                            child: const Center(
                                child: Text(
                              "Re-Calculate",
                              style: TextStyle(fontSize: 25, color: Colors.white),
                            )),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
