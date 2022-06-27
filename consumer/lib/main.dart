import 'package:consumer/config/config_values.dart';
import 'package:consumer/config/environment_config.dart';
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

        primarySwatch: THEME_COLORS[EnvironmentConfig.CONFIG_THEME_COLOR],
      ),
      home: const ConsumerHomePage(),
    );
  }
}

class ConsumerHomePage extends StatelessWidget {
  const ConsumerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text((APP_TITLES[EnvironmentConfig.CONFIG_APP_TITLE] ?? "")),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             Text("This is ${APP_TITLES[EnvironmentConfig.CONFIG_APP_TITLE] ?? ""} app"),
            TextButton(
                onPressed: () {
                  showSnackBar(context, "This is ${APP_TITLES[EnvironmentConfig.CONFIG_APP_TITLE] ?? ""} app");
                },
                child: const Text("Show Snack Bar"))
          ],
        ),
      ),
    );
  }
}
