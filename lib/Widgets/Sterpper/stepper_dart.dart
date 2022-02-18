import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
          steps:const [
            Step(
              title: Text("Step one"),
              content: Text("data"),
            ),
            Step(
              title: Text("Step Two"),
              content: Text("data"),
            ),
            Step(
              title: Text("Step three"),
              content: Text("data"),
            ),
            
          ],
          onStepTapped: (int newIndex) => {
            setState((){
              _currentStep=newIndex;
            })

          },
          onStepContinue: (){
            if (_currentStep!=2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: (){
            if(_currentStep !=0){
              setState(() {
                _currentStep-=1;
              });
            }
          },
          currentStep:  _currentStep,
        ),
      ),
    );
  }
}
