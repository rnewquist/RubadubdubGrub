import 'package:flutter/material.dart';
import 'package:rubadubdubgrub/data/recipe_data.dart';

class RecipeInfoStepsPage extends StatefulWidget{
  final RecipeInfo info;
  RecipeInfoStepsPage({Key key, @required this.info}): super(key: key);
  @override
  _RecipeInfoStepsPageState createState() => _RecipeInfoStepsPageState();

}

class _RecipeInfoStepsPageState extends State<RecipeInfoStepsPage>{
  int stepCounter = 0;
  List<Step> steps;

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

  @override
  void initState() {
    steps = [
      for(var i = 0; i < widget.info.steps.length; i++) Step(
        title: Text("Step ${(i + 1).toString()}"),
        content: Text(widget.info.steps[i]),
        isActive: true,
      ),
    ];
    super.initState();
  }

}