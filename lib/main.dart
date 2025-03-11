import 'package:flutter/cupertino.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Color.fromARGB(255, 12, 90, 123),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 12, 90, 123),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.35,
              child: Column(
                children: [
                  Expanded(child: Image.asset("assets/images/img_1.png")),
                  Expanded(
                    child: Image.asset("assets/images/img.png", width: 100),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        decoration: BoxDecoration(color: Colors.grey[300],shape: BoxShape.rectangle),
                        child: Icon(
                          CupertinoIcons.mail,
                          color: Colors.blue[800],
                        ),
                      ),
                      labelText: "example@email.com",
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        color: Colors.grey[300],
                        child: Icon(
                          CupertinoIcons.lock,
                          color: Colors.blue[800],
                        ),
                      ),
                      labelText: "*******************",
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 26, 200, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log in",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        Icon(
                          CupertinoIcons.arrow_right_to_line,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Text.rich(
                    TextSpan(
                      text: "Forgot Password?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.black)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "OR",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 12, 90, 123),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(
                          color: Color.fromARGB(255, 16, 119, 154),
                          width: 2,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign Up", style: TextStyle(color: Colors.white)),
                        Icon(
                          CupertinoIcons.arrow_right_to_line,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
