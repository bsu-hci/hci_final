import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:hci_final_project/vid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCSC: The Student Showcase',
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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'CCSC Student Showcase Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 70)),
          Column(children: [
            Text('Student Names: John Snow'),
            Text('Project Name: robo-dog dartboard')
          ]),
          Container(padding: EdgeInsets.only(top: 55)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 150)),
              Container(padding: EdgeInsets.only(left: 12)),
              Placeholder(
                  color: Colors.black, fallbackHeight: 500, fallbackWidth: 300),
              Padding(padding: EdgeInsets.only(left: 50)),
              Container(
                  height: 500,
                  width: 900,
                  child: ChewieListItem(
                    videoPlayerController: VideoPlayerController.asset(
                      'videos/nbheyvid.mp4',
                    ),
                    looping: true,
                  )),
              Padding(padding: EdgeInsets.only(left: 50)),
              Container(
                  height: 500,
                  width: 200,
                  child: ListView(
                    padding: EdgeInsets.all(6),
                    children: [
                      Container(
                          padding: EdgeInsets.all(2),
                          height: 55,
                          color: Colors.blue[50],
                          child: SizedBox(
                            height: 30,
                            child: RaisedButton(
                              onPressed: () {},
                              child: const Text(
                                'Robot dolls',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )),
                      Container(
                          padding: EdgeInsets.all(2),
                          height: 55,
                          color: Colors.blue[50],
                          child: SizedBox(
                            height: 30,
                            child: RaisedButton(
                              onPressed: () {},
                              child: const Text(
                                'Porygon',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )),
                      Container(
                          padding: EdgeInsets.all(2),
                          height: 55,
                          color: Colors.blue[50],
                          child: SizedBox(
                            height: 30,
                            child: RaisedButton(
                              onPressed: () {},
                              child: const Text(
                                'iron keys and you',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )),
                      Container(
                          padding: EdgeInsets.all(2),
                          height: 55,
                          color: Colors.blue[50],
                          child: SizedBox(
                            height: 30,
                            child: RaisedButton(
                              onPressed: () {},
                              child: const Text(
                                'Robo-dog dartboard',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ))
                    ],
                  ))
            ],
          )
        ])));
  }
}
