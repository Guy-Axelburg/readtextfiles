import 'package:flutter/material.dart';

// mytex
void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Read Text File")),
        body: ListView(padding: const EdgeInsets.all(20.0), children: [
          Text("Winston Churchill Speech"),
          FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/weshallfight_short.txt"),
            builder: (context, snapshot) {
              return Text(snapshot.data.toString(), softWrap: true);
            },
          ),
          const Divider(
            height: 20.0,
            thickness: 10.0,
            color: Colors.black,
          ),
          FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/weshallfight_short.txt"),
            builder: (context, snapshot) {
              return RichText(
                  text: TextSpan(
                      text: (snapshot.data.toString()),
                      style: const TextStyle(
                          color: Colors.pink,
                          fontFamily: "Courier New",
                          fontWeight: FontWeight.bold)));
            },
          )
        ]));
  }
}
