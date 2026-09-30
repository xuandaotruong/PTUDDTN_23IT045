import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  static const Color myGreen = Color.fromARGB(255, 77, 131, 239);
  static const TextStyle cardTextStyle = TextStyle(fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myGreen,
        appBar: AppBar(
          title: const Text("MiCard - my toy portfolio"),
          centerTitle: true,
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/me.jpg"),
              ),
              Text(
                "Trương Xuân Đạo",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Programmer",
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 24,
                  )),
              SizedBox(
                height: 20,
              ),
              Card(
                child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("(+84) 779 036 602", style: cardTextStyle)),
              ),
              Card(
                child: ListTile(
                    leading: Icon(Icons.email),
                    title:
                        Text("daotx.23it@vku.udn.vn", style: cardTextStyle)),
              ),
              Card(
                child: ListTile(
                    leading: Icon(Icons.school),
                    title: Text("Vietnam - Korea University of ICT", style: cardTextStyle)),
              ),
            ],
          ),
        ),
      ),
    );
   
  }
}