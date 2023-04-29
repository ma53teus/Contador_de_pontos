import 'package:contador_de_pontos/participantes.dart';
import 'package:flutter/material.dart';


class card_Participante extends StatefulWidget {
  //final Participantes participantes;
  final List<Participantes> participantes;

  card_Participante({Key? key,required this.participantes}) : super(key: key);

  @override
  State<card_Participante> createState() => _card_ParticipanteState();
}

class _card_ParticipanteState extends State<card_Participante> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('teste'),
      ),
      body: Column(
        children: [
          Container(
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
                      child: Text('_contador') //displayText.substring(0,2)),
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
                        'nome.toString(),'
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(alignment: Alignment.center,width: 40,height: 40,child: Icon(Icons.add_circle),),
                      ),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(alignment: Alignment.center,width: 40,height: 40,child: Icon(Icons.remove_circle),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
