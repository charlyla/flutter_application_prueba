import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String valor = "texto";

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          title: const Text("prueba"),
        ),
        body: _createBody(),
        bottomNavigationBar: _createBotomBar());
    return scaffold;
  }

  Widget _createBody() {
    return Column(
      children: [
        Row(children: [
          _loadMapaConfluencia(),
        ]),
        Divider(
          height: 0,
          color: Colors.red,
        ),
        Row(children: [
          _loadInformationCard(),
        ]),
      ],
    );
  }

  Widget _loadMapaConfluencia() {
    return Expanded(
        child: Image(
      image: NetworkImage(
          'https://alertaconfluencia.ar/wp-content/uploads/2021/08/Copia-de-CROQUIS-RMC-2048x1514.png'),
      width: 100,
      fit: BoxFit.contain,
    ));
  }

  // footer
  Widget _createBotomBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'School',
        ),
      ],
      selectedItemColor: Colors.amber[800],
    );
  }

  Widget _loadInformationCard() {
    return Container(
      height: 200,
      width: 300,
      child: Card(
        child: ListTile(
          title: Text("Codesinsider.com"),
        ),
        elevation: 8,
        shadowColor: Colors.green,
        margin: EdgeInsets.all(20),
      ),
    );
  }
}
