import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/triangle': (context) => TriangleAreaScreen(),
        '/trapezoid': (context) => TrapezoidAreaScreen(),
        '/ohms_law': (context) => OhmsLawScreen(),
      },
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/triangle');
              },
              child: Text('Área do Triângulo'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/trapezoid');
              },
              child: Text('Área do Trapézio'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ohms_law');
              },
              child: Text('1ª Lei de Ohm'),
            ),
          ],
        ),
      ),
    );
  }
}

class TriangleAreaScreen extends StatefulWidget {
  @override
  _TriangleAreaScreenState createState() => _TriangleAreaScreenState();
}

class _TriangleAreaScreenState extends State<TriangleAreaScreen> {
  TextEditingController baseController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double area = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Triangle Area')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Base'),
            ),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Height'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double base = double.parse(baseController.text);
                double height = double.parse(heightController.text);
                setState(() {
                  area = 0.5 * base * height;
                });
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text('Area: $area'),
          ],
        ),
      ),
    );
  }
}

class TrapezoidAreaScreen extends StatefulWidget {
  @override
  _TrapezoidAreaScreenState createState() => _TrapezoidAreaScreenState();
}

class _TrapezoidAreaScreenState extends State<TrapezoidAreaScreen> {
  TextEditingController base1Controller = TextEditingController();
  TextEditingController base2Controller = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double area = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trapezoid Area')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: base1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Base 1'),
            ),
            TextField(
              controller: base2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Base 2'),
            ),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Height'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double base1 = double.parse(base1Controller.text);
                double base2 = double.parse(base2Controller.text);
                double height = double.parse(heightController.text);
                setState(() {
                  area = 0.5 * (base1 + base2) * height;
                });
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text('Area: $area'),
          ],
        ),
      ),
    );
  }
}

class OhmsLawScreen extends StatefulWidget {
  @override
  _OhmsLawScreenState createState() => _OhmsLawScreenState();
}

class _OhmsLawScreenState extends State<OhmsLawScreen> {
  TextEditingController voltageController = TextEditingController();
  TextEditingController currentController = TextEditingController();
  TextEditingController resistanceController = TextEditingController();
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ohm\'s Law')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: voltageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Voltage (V)'),
            ),
            TextField(
              controller: currentController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Current (A)'),
            ),
            TextField(
              controller: resistanceController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Resistance (Ω)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double voltage = double.parse(voltageController.text);
                double current = double.parse(currentController.text);
                double resistance = double.parse(resistanceController.text);
                setState(() {
                  if (voltage != 0 && current != 0) {
                    result = voltage / current;
                  } else if (voltage != 0 && resistance != 0) {
                    result = voltage / resistance;
                  } else if (current != 0 && resistance != 0) {
                    result = current * resistance;
                  }
                });
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text('Result: $result'),
          ],
        ),
      ),
    );
  }
}
