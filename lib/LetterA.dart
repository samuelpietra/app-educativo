import 'package:flutter/material.dart';
import 'LetterE.dart';

class LetterA extends StatefulWidget {
  @override
  _LetterA createState() => _LetterA();
}


class _LetterA extends State<LetterA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etapa atual: A'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image(image: AssetImage('asset/images/a.png'))),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Essa é a primeira letra e vogal do nosso alfabeto! Ela geralmente encerra palavras de gênero feminino, como: aluna, bonita, menina. É uma das letras que mais utilizamos, sendo repetida diversas vezes em algumas palavras: arara, banana, guarda-chuva. Muito legal, não é mesmo?', style: TextStyle(color: Colors.black, fontSize: 18, )
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
                    context, MaterialPageRoute(builder: (_) => LetterE())
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
