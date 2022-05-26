import 'package:flutter/material.dart';
import 'package:shared/export_shared.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const RiderHomePage(),
    );
  }
}

class RiderHomePage extends StatelessWidget {
  const RiderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Rider"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("This is rider app"),
            TextButton(
                onPressed: () {
                  showSnackBar(context, "This is rider app");
                },
                child: const Text("Show Snack Bar"))
          ],
        ),
      ),
    );
  }
}

