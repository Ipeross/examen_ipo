import 'package:fl_components/screens/signin_screen_ipo.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Text('PB'),
              backgroundColor: Colors.white54,
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage(
              'https://sm.ign.com/t/ign_es/news/g/george-rr-/george-rr-martin-was-out-of-the-loop-in-later-game-of-throne_e9vf.h720.jpg'),
        ),
      ),
    );
  }
}
