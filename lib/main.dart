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
        primarySwatch: Colors.blue,
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

var nametext = "john snow";
var project = "robot dog";
var vidPath = 'videos/nbheyvid.mp4';
List comments = [
  [
    Container(
      padding: EdgeInsets.all(1),
    )
  ],
  [Container(padding: EdgeInsets.all(1))],
  [Container(padding: EdgeInsets.all(1))],
  [Container(padding: EdgeInsets.all(1))]
];

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController commentController = new TextEditingController();
  List<Widget> displayedComments = comments[0];
  List comentsSwitcher(int buttonNumber) {
    return (comments[(buttonNumber - 1)]);
  }

  void addComment() {
    Container comentItem = new Container(
        height: 100,
        width: 200,
        child: Column(children: [Text(commentController.text)]));
    displayedComments.add(comentItem);
  }

  void updateText(int buttonNumber) {
    if (buttonNumber == 1) {
      nametext = "john snow";
      project = "robot dog";
      vidPath = 'videos/nbheyvid.mp4';
      displayedComments = comentsSwitcher(1);
    }
    if (buttonNumber == 2) {
      nametext = "Elmo Sesami";
      project = "robot doll";
      vidPath = 'videos/telmo.mp4';
      displayedComments = comentsSwitcher(2);
    }
    if (buttonNumber == 3) {
      nametext = "Diana Troy";
      project = "Porygon";
      vidPath = 'videos/jumjum.mp4';
      displayedComments = comentsSwitcher(3);
    }
    if (buttonNumber == 4) {
      nametext = "Kalem chirpi";
      project = "iron keys and you";
      vidPath = 'videos/flumdum.mp4';
      displayedComments = comentsSwitcher(4);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 70)),
          Column(children: [Text(nametext), Text(project)]),
          Container(padding: EdgeInsets.only(top: 55)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 150)),
              Container(padding: EdgeInsets.only(left: 12)),
              Container(
                  height: 500,
                  width: 200,
                  child: Column(
                    children: [
                      ListView(
                        key: UniqueKey(),
                        shrinkWrap: true,
                        padding: EdgeInsets.all(8),
                        children: displayedComments,
                      ),
                      TextField(
                        controller: commentController,
                      ),
                      RaisedButton(
                          onPressed: () => setState(() => addComment()),
                          child: Text("submit comment"))
                    ],
                  )),
              Padding(padding: EdgeInsets.only(left: 50)),
              Container(
                  height: 500,
                  width: 900,
                  child: ChewieListItem(
                    key: UniqueKey(),
                    videoPlayerController: VideoPlayerController.asset(vidPath),
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
                              onPressed: () => setState(() => updateText(2)),
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
                              onPressed: () => setState(() => updateText(3)),
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
                              onPressed: () => setState(() => updateText(4)),
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
                              onPressed: () => setState(() => updateText(1)),
                              child: const Text(
                                'Robot dog',
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
