import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget MakeTextButton(String Name, Color color) {
    return TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () async {
          String path = '$Name.wav';
          final player = AudioPlayer();
          await player.play(AssetSource(path));
        },
        child: Container(
          height: 70,
          width: double.infinity,
          child: Center(
            child: Text(
              Name,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "XYLOPHONE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        MakeTextButton(
          "A",
          Colors.red,
        ),
        MakeTextButton(
          "B",
          Colors.yellow,
        ),
        MakeTextButton(
          "C",
          Colors.blue,
        ),
        MakeTextButton(
          "D",
          Colors.cyan,
        ),
        MakeTextButton(
          "E",
          Colors.teal,
        ),
        MakeTextButton(
          "F",
          Colors.green,
        ),
        MakeTextButton(
          "G",
          Colors.amber,
        )
      ]),
    );
  }
}



// ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
//                 onPressed: () {},
//                 child: const Text(
//                   "A",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 30),
//                 )),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
//                 onPressed: () {},
//                 child: const Text(
//                   "B",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 30),
//                 )),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 onPressed: () {},
//                 child: const Text(
//                   "C",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 30),
//                 )),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                 onPressed: () {},
//                 child: const Text(
//                   "D",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 30),
//                 )),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
//                 onPressed: () {},
//                 child: const Text(
//                   "E",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 30),
//                 )),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
//                 onPressed: () {},
//                 child: const Text(
//                   "F",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 30),
//                 )),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
//                 onPressed: () {},
//                 child: const Text(
//                   "G",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 30),
//                 )),