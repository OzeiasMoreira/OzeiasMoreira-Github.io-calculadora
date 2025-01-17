import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Flutter',
      theme: ThemeData.dark(),
      home: CalculadoraPage(),
    );
  }
}

class CalculadoraPage extends StatefulWidget {
  @override
  _CalculadoraPageState createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  String display = "0";
  
  // Adicione sua lógica aqui
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(20),
              child: Text(display, style: TextStyle(fontSize: 40)),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              padding: EdgeInsets.all(10),
              itemCount: 16, // Ajuste conforme o número de botões
              itemBuilder: (context, index) {
                return ElevatedButton(
                  onPressed: () {
                    // Adicione funcionalidade do botão
                  },
                  child: Text('Btn $index'), // Substitua pelos símbolos reais
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
