import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slides_example/nested_screens_vm/nested_screen_two_view_model.dart';

class NestedScreenTwo extends StatelessWidget {
  const NestedScreenTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child:
              Text(Provider.of<NestedScreenTwoViewModel>(context).centerText),
        ),
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Pop Screen"),
        ),
      ],
    );
  }
}
