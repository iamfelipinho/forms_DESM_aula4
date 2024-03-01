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
            icon: Icon(Icons.local_pizza),
            label: 'Italia',
            backgroundColor: Color.fromARGB(255, 0, 80, 201)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.eco),
            label: 'Japão',
            backgroundColor: Color.fromARGB(255, 129, 4, 4)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Mexico',
            backgroundColor: Color.fromARGB(255, 184, 141, 0)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_all),
            label: 'Brazil',
            backgroundColor: Color.fromARGB(255, 0, 117, 16)
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
        return ItaliaScreen();
      case 1:
        return JapaoScreen();
      case 2:
        return MexicoScreen();
      case 3:
        return BrasilScreen();
      default:
        return Container(); // Caso de índice inválido, retorna um contêiner vazio
    }
  }
}

class ItaliaScreen extends StatelessWidget {
  const ItaliaScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              
              'Italia:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 250,
              width: 400,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLHPSTBc3321Dyb5xIunmciFoLZuuPnuQBu0iDYbKEew&s')
            ),
            Text(
              
              'Pizza Margherita:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20), // Adiciona um espaço entre o texto e a lista de itens
            // Lista de itens com bordas em volta de cada item
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'Uma deliciosa pizza coberta com molho de tomate, queijo mozzarella e manjericão fresco.',
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


   


class JapaoScreen extends StatelessWidget {
  const JapaoScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              
              'Japão:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 250,
              width: 400,
              child: Image.network('https://www.shutterstock.com/shutterstock/photos/1937661397/display_1500/stock-photo-assorted-sushi-nigiri-and-maki-big-set-on-slate-a-variety-of-japanese-sushi-with-tuna-crab-1937661397.jpg'
              ),
            ),
            Text(
              
              'Sushi:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20), // Adiciona um espaço entre o texto e a lista de itens
            // Lista de itens com bordas em volta de cada item
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'Pratos de arroz temperado cobertos com peixe cru ou frutos do mar, geralmente acompanhados de legumes ou algas marinhas.',
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


class MexicoScreen extends StatelessWidget {
  const MexicoScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              
              'Mexico:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 250,
              width: 400,
              child: Image.network('https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/C07AE049-11C3-4672-A96A-A547C15F0116/Derivates/FE1D05A4-0A44-4007-9A42-5CAFD9F8F798.jpg'
              ),
            ),
            Text(
              
              'Tacos al Pastor:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20), // Adiciona um espaço entre o texto e a lista de itens
            // Lista de itens com bordas em volta de cada item
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'Tacos recheados com carne de porco marinada em especiarias e assada em um espeto vertical, geralmente servidos com abacaxi, coentro e cebola.',
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



class BrasilScreen extends StatelessWidget {
  const BrasilScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              
              'Brasil:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 250,
              width: 400,
              child: Image.network('https://img.nsctotal.com.br/wp-content/uploads/2022/06/feijoada-944x531.jpg'
              ),
            ),
            Text(
              
              'Feijoada:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 20), // Adiciona um espaço entre o texto e a lista de itens
            // Lista de itens com bordas em volta de cada item
            Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  'Feijoada: Prato de feijão preto cozido com carne de porco, servido com arroz, couve, farofa e laranja.',
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