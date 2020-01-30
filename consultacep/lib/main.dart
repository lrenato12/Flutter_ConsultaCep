
import 'package:flutter/material.dart';
void main() {runApp(MaterialApp(
	title: 'Consulta de Cep',
	 theme: ThemeData(
	   primarySwatch: Colors.green),
         home: ConsultaCep(),
      )
    );
}

class ConsultaCep extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Consulta de Cep'),
      ),
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.black, fontSize: 30),
                decoration: InputDecoration(
                  labelText:"Insira o CEP:",
                  labelStyle: TextStyle(color: Colors.black),
                )
           ), 
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () => { print("pressionei o botão"), },
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text( "Enviar", style: TextStyle(color: Colors.white, fontSize: 30), ), //Text
                  color:Colors.red,
                ),
              ),
            ],
         ),
        ),
      )     
    );
  }
}


class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota (tela)"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () { 
            Navigator.pop(context);
          },
          child: Text('Retornar !'),
        ),
      ),
    );
  }
}