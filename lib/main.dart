import 'package:flutter/material.dart';
// import 'package:sm_tutoring/logo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            appBar: AppBar(
              toolbarHeight: 100,
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              // title: LogoSVG(),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Book Now", style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("About Us", style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Sessions", style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Profile", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
            body: Container(
              alignment: Alignment.center,
              color: Theme.of(context).colorScheme.surfaceContainer,
              child: Center(
                child: FractionallySizedBox(
                  heightFactor: 0.5,
                  widthFactor: 0.5,
                  child: Text(
                    "Math got you down? Let us get you back up.",
                    style: TextStyle(
                      fontSize: 60,
                      color: Theme.of(context).colorScheme.onSurface
                    ),
                  ),
                ),
              ),
            )
          );
        },
      ),
    );
  }
}
