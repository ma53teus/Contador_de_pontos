import 'package:contador_de_pontos/participantes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../card_participante.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController_nome = TextEditingController();
  String displayText = "";
  List<Participantes> participantes = [];
  int _contador = 0;
  bool ontap = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    _incrementar() {
      setState(() {
        _contador++;
      });
    }

    void _decrementar(int ponto) {
      setState(() {
        _contador--;
        //ponto--;
      });
    }

    _mudando() {
      if (textController_nome != '') {
        setState(() {
          participantes.add(Participantes(nome: textController_nome.text));
          displayText = textController_nome.text;
          textController_nome.clear();
        });
      }
    }

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('contador'),
        actions: [
          IconButton(
              onPressed: () {
                if (participantes != []) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              card_Participante(participantes: participantes)));
                }
              },
              icon: Icon(Icons.open_in_new_rounded))
        ],
      ),
      //drawer: drawer(height,width),
      body: SafeArea(
        child: Column(
          children: [
            box(width),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              width: width * 0.5,
              height: height * 0.075,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width * 0.25,
                    child: TextField(
                      autocorrect: true,
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      maxLength: null,
                      maxLines: 1,
                      controller: textController_nome,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 1),
                        hintText: 'nome',
                        //border: InputBorder.none
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Button(Icons.add, _mudando),
                ],
              ),
            ),
            box(width),
            Container(
              width: width * 0.6,
              height: height * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 10),
              //width: width,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text('$_contador') //displayText.substring(0,2)),
                        ),
                    Container(
                      width: width * 0.25,
                      height: height * 0.075,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          displayText,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Button(Icons.add, _incrementar),
                        Button(Icons.remove, _decrementar),
                      ],
                    )
                  ],
                ),
              ),
            ),
            box(width),
            Flexible(
              child: participantes != null
                  ? ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return card_teste(
                          height,
                          width,
                          _decrementar,
                          _incrementar,
                          participantes[index],
                        );
                      },
                      itemCount: participantes.length,
                      shrinkWrap: true,
                    )
                  : Center(
                      child: Text('sem jogadores',
                          style: TextStyle(fontSize: 50))),
            ),
          ],
        ),
      ),
    );
  }

  Button(IconData? icons, Function? ontap) {
    return ElevatedButton(
      onPressed: () => ontap!(),
      child: Icon(
        icons,
        color: Colors.black,
        size: 23,
      ),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        backgroundColor: Colors.grey,
        //padding: EdgeInsets.all(12)
      ),
    );
  }

  box(double w) {
    return SizedBox(
      width: w,
      height: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(color: Colors.deepPurple),
      ),
    );
  }

  card_teste(double h, double w, Function _decrementar, Function _incrementar,
      Participantes nome) {
    return Container(
      width: w * 0.6,
      height: h * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      //width: width,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text('${nome.ponto}') //displayText.substring(0,2)),
                ),
            Container(
              width: w * 0.25,
              height: h * 0.075,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Center(
                child: Text(
                  nome.nome,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                //Button(Icons.add, _incrementar(nome.ponto)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      nome.ponto = nome.ponto + 1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    child: Icon(Icons.add_circle),
                  ),
                ),
                //Button(Icons.remove, _decrementar(nome.ponto)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      nome.ponto = nome.ponto - 1;
                    });
                  },
                  onLongPress: (){
                    setState(() {
                      nome.ponto--;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    child: Icon(Icons.remove_circle),

                  ),
                ),
                /*ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nome.ponto = nome.ponto - 1;
                    });
                  },
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.black,
                    size: 23,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: Colors.grey,
                    //padding: EdgeInsets.all(12)
                  ),
                )*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}
