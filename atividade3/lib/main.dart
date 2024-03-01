import 'package:flutter/material.dart';

void main() {
  runApp(UserInfoApp());
}

class UserInfoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Information',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserInfoScreen(),
    );
  }
}

class UserInfoScreen extends StatefulWidget {
  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  String _selectedSex = '';
  String _selectedMaritalStatus = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Information'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sexo:',
              style: TextStyle(fontSize: 18.0),
            ),
            Row(
              children: <Widget>[
                Radio<String>(
                  value: 'Masculino',
                  groupValue: _selectedSex,
                  onChanged: (value) {
                    setState(() {
                      _selectedSex = value!;
                    });
                  },
                ),
                Text('Masculino'),
                Radio<String>(
                  value: 'Feminino',
                  groupValue: _selectedSex,
                  onChanged: (value) {
                    setState(() {
                      _selectedSex = value!;
                    });
                  },
                ),
                Text('Feminino'),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Estado Civil:',
              style: TextStyle(fontSize: 18.0),
            ),
            Row(
              children: <Widget>[
                Radio<String>(
                  value: 'Solteiro(a)',
                  groupValue: _selectedMaritalStatus,
                  onChanged: (value) {
                    setState(() {
                      _selectedMaritalStatus = value!;
                    });
                  },
                ),
                Text('Solteiro(a)'),
                Radio<String>(
                  value: 'Casado(a)',
                  groupValue: _selectedMaritalStatus,
                  onChanged: (value) {
                    setState(() {
                      _selectedMaritalStatus = value!;
                    });
                  },
                ),
                Text('Casado(a)'),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode fazer o que quiser com as informações coletadas
                print('Sexo: $_selectedSex');
                print('Estado Civil: $_selectedMaritalStatus');
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
