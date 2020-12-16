import 'package:flutter/material.dart';
import 'package:lifecycle/lifecycle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [defaultLifecycleObserver],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: AppLifecycleReactor(title: 'App Lifecycle State'),
      );
  }
}

class AppLifecycleReactor extends StatefulWidget {
  const AppLifecycleReactor({ Key key, String title }) : super(key: key);

  @override
  _AppLifecycleReactorState createState() => _AppLifecycleReactorState();
}

class _AppLifecycleReactorState extends State<AppLifecycleReactor> with WidgetsBindingObserver {
  String text = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      text = state.toString();
    });
   print(state);

    if(state == AppLifecycleState.resumed){
    }else if(state == AppLifecycleState.inactive){
    }else if(state == AppLifecycleState.paused){
    }else if(state == AppLifecycleState.detached){
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$text",
            )
          ]
        )
      )
    );
  }
}





