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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LContainerWidget(),
    );
  }
}

class LMaterialWidget extends StatelessWidget {
  const LMaterialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('MaterialApp'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Damn yer grog, feed the jack.Wisely, indeed, beauty!Kahlesses experiment from mankinds like ancient queens.',
            style: TextStyle(fontSize: 15, height: 1.5),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class LScaffoldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LScaffoldWidget();
  }
}

class _LScaffoldWidget extends State<LScaffoldWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text('Scaffold'),
      ),
      body: Center(
        child: Text(
          'You have pressed the button $_count times',
          style: TextStyle(fontSize: 16),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.secondaryContainer,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Icrement count',
        elevation: 1.0,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class LAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Demo'),
        actions: [
          IconButton(
            onPressed: () {
              // scaffoldkey.currentState!.showSnackBar(snackBar);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Welcome to flutter'),
                behavior: SnackBarBehavior.floating,
              ));
            },
            icon: Icon(Icons.add_alert),
            tooltip: 'Show SnackBar',
          ),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close))
        ],
      ),
      body: Center(
        child: Text(
          'This is the Home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class LContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(5.0),
                color: Theme.of(context).primaryColor,
                height: 96.0,
                child: Center(
                  child: Text(
                    'I am Container',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                color: Theme.of(context).primaryColor,
                alignment: Alignment.center,
                transform: Matrix4.skewY(0.2),
                child: Text('Hai I am Slanting',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: Colors.white)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
