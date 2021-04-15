import 'package:flutter/material.dart';
import 'LetterI.dart';

class LetterE extends StatefulWidget {
  @override
  _LetterE createState() => _LetterE();
}


class _LetterE extends State<LetterE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etapa atual: E'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Center(
                child: Container(
                    width: 300,
                    height: 250,
                    child: Image(image: AssetImage('asset/images/e.png'))),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Essa é a quinta letra e segunda vogal do nosso alfabeto! Pra uma só letra, ela dá nome pra muita coisa grande: edifício, elefante, esfinge. Também é bastante usada para somar palavras em uma mesma frase: eu gosto de futebol e chocolate. Já aprendemos duas letras!', style: TextStyle(color: Colors.black, fontSize: 18, )
                  )
                ),
              )
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LetterI())
                  );
                },
                child: Text(
                  'Próxima',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
