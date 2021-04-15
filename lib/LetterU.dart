import 'package:flutter/material.dart';
import 'HomePage.dart';

class LetterU extends StatefulWidget {
  @override
  _LetterU createState() => _LetterU();
}


class _LetterU extends State<LetterU> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etapa atual: U'),
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
                    child: Image(image: AssetImage('asset/images/u.png'))),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Chegamos na última vogal, no alfabeto é a número 21! Parece uma ferradura, não é? Ou então com uma minhoca, eca! O importante é que forma um monte de palavras legais: aula, futebol, música. Agora você já sabe as 5 vogais, hein?', style: TextStyle(color: Colors.black, fontSize: 18, )
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
                    context, MaterialPageRoute(builder: (_) => HomePage())
                  );
                },
                child: Text(
                  'Concluir',
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
