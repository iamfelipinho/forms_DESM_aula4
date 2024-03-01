import 'package:flutter/material.dart';

void main() {
  runApp(NavBotton());
}

class NavBotton extends StatelessWidget {
  const NavBotton({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigatorScreen(),
    );
  }
}

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({Key? key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SM Mobile App"),
      ),
      body: _getPage(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Indústria',
            backgroundColor: Color.fromARGB(255, 201, 131, 0)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.eco),
            label: 'Agricultura',
            backgroundColor: Color.fromARGB(255, 4, 129, 92)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Saúde',
            backgroundColor: Color.fromARGB(255, 129, 4, 4)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Economia',
            backgroundColor: Color.fromARGB(255, 84, 85, 85)
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: onItemTapped,
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return IndustryScreen();
      case 1:
        return AgricultureScreen();
      case 2:
        return HealthScreen();
      case 3:
        return EconomyScreen();
      default:
        return Container(); // Caso de índice inválido, retorna um contêiner vazio
    }
  }
}

class IndustryScreen extends StatelessWidget {
  const IndustryScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: 400,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0CMC3sCQQOZPj1DzmOZ16J1m9PCgggFW5XPpuwaqsmg&s')
            ),
            Text(
              
              'Curiosidade sobre a industria:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20), // Adiciona um espaço entre o texto e a lista de itens
            // Lista de itens com bordas em volta de cada item
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'Muitos produtos industriais utilizam embalagens biodegradáveis para reduzir o impacto ambiental.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ]
      ),
      ),
    );
  }
}


   


class AgricultureScreen extends StatelessWidget {
  const AgricultureScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: 400,
              child: Image.network('https://super.abril.com.br/wp-content/uploads/2022/12/SI_bliss_site.jpg?quality=90&strip=info'
              ),
            ),
            Text(
              
              'Para que serve a Agro:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20), // Adiciona um espaço entre o texto e a lista de itens
            // Lista de itens com bordas em volta de cada item
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'A agricultura serve para produzir alimentos, fibras e materiais vegetais para consumo humano e animal.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ]
      ),
      ),
    );
  }
}


class HealthScreen extends StatelessWidget {
  const HealthScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: 400,
              child: Image.network('https://img.imageboss.me/revista-cdn/cdn/32018/7b3c5bb401da576bd640addf39e16073920e351e.jpg?1603218870'
              ),
            ),
            Text(
              
              'Area da saude:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20), // Adiciona um espaço entre o texto e a lista de itens
            // Lista de itens com bordas em volta de cada item
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'A área da saúde serve para promover o bem-estar físico, mental e social das pessoas, prevenindo doenças, tratando enfermidades e melhorando a qualidade de vida.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ]
      ),
      ),
    );
  }
}



class EconomyScreen extends StatelessWidget {
  const EconomyScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: 400,
              child: Image.network('https://regrasparatcc.com.br/wp-content/uploads/2020/11/temas-para-tcc-de-economia.jpg'
              ),
            ),
            Text(
              
              'Economia:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20), // Adiciona um espaço entre o texto e a lista de itens
            // Lista de itens com bordas em volta de cada item
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'A economia estuda como os recursos são produzidos, distribuídos e utilizados para satisfazer as necessidades e desejos das pessoas e das sociedades, buscando o crescimento e a estabilidade financeira.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ]
      ),
      ),
    );
  }
}
