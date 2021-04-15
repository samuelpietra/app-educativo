import 'package:flutter/material.dart';
import 'LetterO.dart';

class LetterI extends StatefulWidget {
  @override
  _LetterI createState() => _LetterI();
}


class _LetterI extends State<LetterI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etapa atual: I'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Center(
                child: Container(
                    width: 230,
                    height: 180,
                    child: Image(image: AssetImage('asset/images/i.png'))),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Essa é a nona letra e terceira vogal do nosso alfabeto! Lembra bastante o formato da letra T, não é mesmo? Mas nada de confundir! Por isso mesmo, vamos colocar os pingos nos i\'s: é IMPOSSÍVEL escrever errado o nome do ÍTALO ou da IARA. Viu só como é fácil?', style: TextStyle(color: Colors.black, fontSize: 18, )
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
                    context, MaterialPageRoute(builder: (_) => LetterO())
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
