import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slides_example/navigator_keys.dart';
import 'package:slides_example/nested_screens/nested_screen_one.dart';
import 'package:slides_example/nested_screens/nested_screen_two.dart';
import 'package:slides_example/nested_screens_vm/nested_screen_one_view_model.dart';
import 'package:slides_example/nested_screens_vm/nested_screen_two_view_model.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiProvider(
      providers: [
        Provider(
            create: (_) => NestedScreenOneViewModel()
              ..screenCenterText = "Here Screen Two Nested Screen One"),
        Provider(
            create: (_) => NestedScreenTwoViewModel()
              ..screenCenterText = "Here Screen Two Nested Screen two")
      ],
      child: Navigator(
        key: Provider.of<NavigatorKeys>(context).screenTwoNavigator,
        initialRoute: "Nested Screen 1",
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case "Nested Screen 1":
              return PageRouteBuilder(
                  pageBuilder: (context, _, __) => NestedScreenOne());
            case "Nested Screen 2":
              return MaterialPageRoute(builder: (context) => NestedScreenTwo());
            default:
              return PageRouteBuilder(
                  pageBuilder: (context, _, __) => NestedScreenOne());
          }
        },
      ),
    );
  }
}
