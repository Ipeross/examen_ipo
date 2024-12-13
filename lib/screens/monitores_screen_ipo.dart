import 'package:flutter/material.dart';

class MonitoresScreen extends StatelessWidget {
  const MonitoresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
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
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage(
                    'https://www.rctb1899.es/sites/default/files/noticia/imatge/2495_1.jpg'),
              ),
              Text('Nadal', style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/1701651173822898176/v_01vBPF_400x400.jpg'),
              ),
              Text('Gisela', style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage(
                    'https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg'),
              ),
              Text('Mireia', style: TextStyle(fontSize: 18)),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
