import 'package:flutter/material.dart';
 // main関数から処理が開始され、runAppにWidgetを渡すことでアプリが表示される
void main() {
  runApp(MyApp());
}
 // MyAppはStatelessWidgetを継承しており、Widgetである
 // StatelessWidget(状態を持たない静的なWidget)
 // データが一切変わらない 例：アイコン、ラベル、テキスト...
class MyApp extends StatelessWidget {
  @override
 // WidgetやStateのbuildメソッドの戻り値が、画面に表示されるUIとなる
  Widget build(BuildContext context) {
 // MaterialAppはマテリアルデザインのアプリを作るために便利なWidget
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
          // MyHomePageはStatefulWidgetを継承しており、状態があることを意味する
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
 // StatefulWidget(状態を持つ動的なWidget)
 // ユーザーのインタラクションによってデータが変わる 例：チェックボックス、フォーム、スライダー...
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
 // Scaffoldは典型的な画面レイアウトを構築する便利なWidget
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
