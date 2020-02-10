import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slides_example/nested_screens_vm/nested_screen_one_view_model.dart';

class NestedScreenOne extends StatelessWidget {
  const NestedScreenOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(Provider.of<NestedScreenOneViewModel>(context).centerText),
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, "Nested Screen 2");
            },
            child: Text("Navigate to screen 2"),
          ),
        ],
      )),
    );
  }
}
