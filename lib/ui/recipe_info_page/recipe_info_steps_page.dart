import 'package:flutter/material.dart';

class RecipeInfoStepsPage extends StatefulWidget{
  @override
  _RecipeInfoStepsPageState createState() => _RecipeInfoStepsPageState();

}

class _RecipeInfoStepsPageState extends State<RecipeInfoStepsPage>{
  int stepCounter = 0;
  List<Step> steps = [
    Step(
      title: Text("Step One"),
      content: Text("This is the first step"),
      isActive: true,
    ),
    Step(
      title: Text("Step Two"),
      content: Text("This is the second step"),
      isActive: true,
    ),
    Step(
      title: Text("Step Three"),
      content: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        direction: Axis.horizontal, // main axis (rows or columns)
        children: <Widget>[
          Chip(label: Text('Chips11')),
          Chip(label: Text('Chips12')),
          Chip(label: Text('Chips13')),
          Chip(label: Text('Chips14')),
          Chip(label: Text('Chips15')),
          Chip(label: Text('Chips16'))
        ],
      ),
      isActive: true,
    ),
    Step(
      title: Text("Step Four"),
      content: Text("This is the fourth step"),
      isActive: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stepper(
        currentStep: this.stepCounter,
        steps: steps,
        type: StepperType.vertical,
        onStepTapped: (step) {
          setState(() {
            stepCounter = step;
          });
        },
        onStepCancel: () {
          setState(() {
            stepCounter > 0 ? stepCounter -= 1 : stepCounter = 0;
          });
        },
        onStepContinue: () {
          setState(() {
            stepCounter < steps.length - 1 ? stepCounter += 1 : stepCounter = 0;
          });
        },
      );
  }

}