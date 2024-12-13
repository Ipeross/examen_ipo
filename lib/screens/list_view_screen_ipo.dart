import 'package:fl_components/screens/monitores_screen_ipo.dart';
import 'package:fl_components/screens/pistas_screen_ipo.dart';
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
              maxRadius: 120,
              backgroundImage: NetworkImage(
                  'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.sports_basketball),
            title: const Text('Pistas'),
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => const PistasScreen());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on),
            title: const Text('Monitores'),
            onTap: () {
              final route = MaterialPageRoute(
                  builder: (context) => const MonitoresScreen());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.biotech_outlined),
            title: const Text('Reservas'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
