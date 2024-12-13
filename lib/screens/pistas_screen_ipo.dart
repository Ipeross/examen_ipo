import 'package:flutter/material.dart';

class PistasScreen extends StatelessWidget {
  const PistasScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const FadeInImage(
              image: NetworkImage(
                  'https://allforpadel.com/img/cms/pistas/fx2-1.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 3000),
            ),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                child: Text('Pista de pádel')),
            FadeInImage(
              image: NetworkImage(
                  'https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg'),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 3000),
            ),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                child: Text('Pista de pádel')),
            FadeInImage(
              image: NetworkImage(
                  'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg'),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 3000),
            ),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                child: Text('Pista de pádel'))
          ],
        ),
      ),
    );
  }
}
