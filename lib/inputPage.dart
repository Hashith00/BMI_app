import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:bmi_app/IconContent.dart';
import 'package:bmi_app/Card.dart';
import 'package:bmi_app/Constants.dart';
import 'package:bmi_app/ResultPage.dart';

const activeCardColor = Color(0xFF1d1f33);
const inactiveCardColor = Color(0xFF111328);
const bottomButtonColor = Color(0xFFEB1555);
int height = 100;
int weight = 50;
int Age = 10;

enum gender { male, female }

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Color maleCardColor = inactiveCardColor;
  Color femalCardColor = inactiveCardColor;
  gender? selectedGender;
  double initalSliderValue = 20.0;


  // Creating the method for changing the color of the card when clicked
  // Here 1= male , 2 = female
  // void updateColor(gender selectedGender){
  //
  //   if(selectedGender == gender.male){
  //     maleCardColor == inactiveCardColor ? (maleCardColor = activeCardColor, femalCardColor = inactiveCardColor) :maleCardColor= inactiveCardColor;
  //   }
  //   if(selectedGender == gender.female) {
  //     femalCardColor == inactiveCardColor ? (femalCardColor = activeCardColor, maleCardColor = inactiveCardColor) : femalCardColor = inactiveCardColor;
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = gender.male;
                        });
                      },
                      child: GenderCard(
                        iconName: FontAwesome.mars,
                        color: selectedGender == gender.male
                            ? activeCardColor
                            : inactiveCardColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = gender.female;
                        });
                      },
                      child: GenderCard(
                        iconName: FontAwesome.venus,
                        color: selectedGender == gender.female
                            ? activeCardColor
                            : inactiveCardColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: NewCard(
                      color: activeCardColor,
                      childwidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Height",
                            style: textStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline
                                .alphabetic, // Need to have this for crossAxis baseline
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            children: [
                              Text(
                                height.toString(),
                                style: const TextStyle(
                                    fontSize: 70, fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'cm',
                              )
                            ],
                          ),
                          Slider(
                              value: height.toDouble(),
                              max: 200,
                              min: 100,
                              divisions: 100,
                              activeColor: bottomButtonColor,
                              label: height.round().toString(),
                              onChanged: (double slidervalue) {
                                setState(() {
                                  height = slidervalue.toInt();
                                });
                              })
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: NewCard(
                      color: activeCardColor,
                      childwidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: textStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0x1AFFFFFF),
                                    border: Border.all(),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: const Icon(
                                    FontAwesome.plus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0x1AFFFFFF),
                                    border: Border.all(),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: const Icon(
                                    FontAwesome.minus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: NewCard(
                      color: activeCardColor,
                      childwidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: textStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            Age.toString(),
                            style: const TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0x1AFFFFFF),
                                    border: Border.all(),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                  child: const Icon(
                                    FontAwesome.plus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Color(0x1AFFFFFF),
                                    border: Border.all(),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      Age--;
                                    });
                                  },
                                  child: const Icon(
                                    FontAwesome.minus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            BottomActionButton()
          ],
        ),
      ),
    );
  }
}

class BottomActionButton extends StatelessWidget {
  const BottomActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 70,
      color: bottomButtonColor,
      child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => resultPage()));
          },
          child: Text(
            "Calculate BMI",
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
    );
  }
}
