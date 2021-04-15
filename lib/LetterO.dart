import 'package:flutter/material.dart';
import 'LetterU.dart';

class LetterO extends StatefulWidget {
  @override
  _LetterO createState() => _LetterO();
}


class _LetterO extends State<LetterO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etapa atual: O'),
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
                    child: Image(image: AssetImage('asset/images/o.png'))),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 100),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Nossa letra de número 15 e também a penúltima vogal, estamos quase acabando! Lembra que a letra A costuma definir palavras femininas? Agora é o contrário: aluno, bonito, menino. Além do mais, vem falar que não lembra o formato de uma bola? É o ó do borogodó!', style: TextStyle(color: Colors.black, fontSize: 18, )
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
                    context, MaterialPageRoute(builder: (_) => LetterU())
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
