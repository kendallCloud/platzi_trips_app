import 'package:flutter/material.dart';
import 'Contact_Card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green,
        ),
        home: const MyHomePage(title: 'Whatsapp'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        leading: const BackButton(
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical:0), // establece el espacio vertical entre los elementos
          children: <Widget>[
            ContactCard(
                'https://i.pinimg.com/474x/55/66/ed/5566ed2dd1f4d6054f8c3778d6da0c90.jpg',
                'Edogawa Rampo',
                'Traeme pastel!'),
            ContactCard(
                'https://i.pinimg.com/originals/0a/15/e3/0a15e3b6d0b4460168d856834aa4161f.jpg',
                'Ozamu Dazai',
                'Le robé el movil a Kunikida ajjaja'),

            ContactCard(
                'https://i.pinimg.com/originals/d7/ce/b8/d7ceb8a0f8c005eccc141d9c454e597c.jpg',
                'Fukuzawa Yurichi',
                'Traele pastel a Rampo, ponlo en mi cuenta'),
            ContactCard(
                'https://i.pinimg.com/736x/ca/f5/dd/caf5dda454db980d9a6b70502605218a.jpg',
                'Dopo Kunikida',
                'Soy gay!')
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
