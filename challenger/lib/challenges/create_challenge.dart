import 'package:flutter/material.dart';

class CreateChallengePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _CreateChallengePageState();
  }
}

class _CreateChallengePageState extends State<CreateChallengePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  double _difficultySliderValue = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create challenge"),
        ),
        body: SafeArea(
          child: Form(
           key: _formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0
              ),
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _nameController,
                  maxLength: 64,
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(),
                  ),
                  validator: null,
                ),
                SizedBox(height: 12.0,),
                TextFormField(
                  controller: _descriptionController,
                  maxLength: 256,
                  decoration: InputDecoration(
                    labelText: "Description",
                    border: OutlineInputBorder(),
                  ),
                  //validator: null,
                ),
                SizedBox(height: 12.0,),
                Text(
                  "Starting difficulty: ${_difficultySliderValue.round()}",
                  style: Theme.of(context).textTheme.body1,
                ),
                Slider(
                  value: _difficultySliderValue,
                  min: 1,
                  max: 10,
                  divisions: 9,
                  label: _difficultySliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _difficultySliderValue = value;
                    });
                  },
                ),
                SizedBox(height: 12.0,),
                RaisedButton(
                  child: Text('Create',),
                  elevation: 8.0,
                  onPressed: () => {

                  },
                ),
              ]
            )
          )
        )
    );
  }
}