import 'dart:async';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LAlertWidget(),
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
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text('Container'),
        actions: [
          IconButton(
              onPressed: () {
                // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //   content: Text('Welcome to flutter'),
                //   behavior: SnackBarBehavior.floating,
                // ));
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Show snakbar')));
              },
              icon: Icon(Icons.info_outline)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
              child: Text('Hai I am Slanting',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.white)),
            ),
            SizedBox(
              height: 48,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.displayLarge!.fontSize! *
                          1.0 +
                      50.0),
              color: Theme.of(context).primaryColor,
              transform: Matrix4.rotationY(0.2),
              alignment: Alignment.center,
              child: Text(
                'I am also Slanting,but see my edges.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Container(
              height: 200,
              width: 200,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Theme.of(context).secondaryHeaderColor,
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Theme.of(context).indicatorColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text('Scaffold'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Simple Text'),
            Text(
              'Future at the universe that is when small creatures die. Senior girls, to the moon.',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Shadow Text',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  shadows: [Shadow(color: Colors.amber, offset: Offset(2, 4))]),
            ),
            Text.rich(
              softWrap: true,
              TextSpan(
                  text: 'Hi, I am',
                  style: TextStyle(fontSize: 38),
                  children: [
                    TextSpan(
                        text: ' Italic',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: ' Bold',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: ' Normal',
                        style: TextStyle(fontWeight: FontWeight.normal)),
                  ]),
            ),
            RichText(
              softWrap: true,
              text: TextSpan(
                  text: 'I am',
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                        text: ' RichText',
                        style: TextStyle(color: Colors.green, fontSize: 24)),
                    TextSpan(
                        text: ' similar to',
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                        text: 'Text.rich',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class LButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Scaffold'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: () {}, child: Text('Text Button')),
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sms_failed,
                color: Colors.blue,
                size: 36,
              ),
              tooltip: 'Image button',
            ),
            Material(
              color: Colors.orange,
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  width: 80.0,
                  height: 40.0,
                ),
              ),
            ),
            RawMaterialButton(
              // focusColor: Colors.red,
              // autofocus: true,
              // focusElevation: 2.0,
              // highlightElevation: 12.0,

              shape: CircleBorder(),
              elevation: 12,
              splashColor: Colors.transparent,
              fillColor: Colors.deepPurpleAccent,
              highlightColor: Colors.transparent,
              onPressed: () {},
              child: Icon(
                Icons.play_arrow,
                color: Colors.limeAccent,
              ),
            ),
            BackButton(
              onPressed: () {},
            ),
            CloseButton(
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class LSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Scaffold'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Welcome to the page'),
                    duration: Duration(milliseconds: 500),
                    backgroundColor: Colors.red,
                  ));
                },
                child: Text('Simple snakBar')),
          ],
        ),
      ),
    );
  }
}

class LAlertWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void sowSnakBar(String text, String ans) {
      final SnackBar snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        backgroundColor: ans.compareTo('Yes') == 0 ? Colors.green : Colors.red,
        content: Row(
          children: [
            Icon(
              ans.compareTo('Yes') == 0 ? Icons.favorite : Icons.watch_later,
              color: ans.compareTo('Yes') == 0 ? Colors.pink : Colors.yellow,
              size: 24,
              semanticLabel: text,
            ),
            Text(text)
          ],
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    simpleDialog() async {
      switch (await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('Welcome to my Alert Box'),
            backgroundColor: Colors.red,
            elevation: 2.0,
            children: [
              SimpleDialogOption(

                child: Text('yes'),
                onPressed: () {
                  Navigator.pop(context, 'Yes');
                },
              ),
              SimpleDialogOption(
                child: Text('No'),
                onPressed: () => Navigator.pop(context, 'No'),
              )
            ],
          );
        },
      )) {
        case 'Yes':
          sowSnakBar('Thanks!', 'Yes');
          print('yes');
          break;
        case 'No':
          sowSnakBar('Oh!No... Try to provide you best', 'No');

          print('No');
          break;
      }
    }

    Future<void> alertDialog() async {
      switch (await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('It is nice?'),
            title: Text('Alert Dialog'),
            actions: <TextButton>[
              TextButton(
                  onPressed: () {
                    print(112/30);
                    Navigator.pop(context, 'Yes');
                  },
                  child: Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'No');
                  },
                  child: Text('No')),
            ],
          );
        },
      )) {
        case 'Yes':
          sowSnakBar('Thanks!', 'Yes');
          print('yes');
          break;
        case 'No':
          sowSnakBar('Oh!No... Try to provide you best', 'No');
          print('No');
          break;
      }
    }

    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('Scaffold'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: simpleDialog, child: Text('Simple Dialog')),
              ElevatedButton(onPressed: alertDialog, child: Text('Aler Dialog'))
            ],
          ),
        ));
  }
}
