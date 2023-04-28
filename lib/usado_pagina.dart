/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  String displayText = "";
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    void _incrementar() {
      setState(() {
        _contador++;
      });
    }

    void _decrementar() {
      setState(() {
        _contador--;
      });
    }

    _mudando() {
      setState(() {
        displayText = textController.text;
        textController.clear();
      });
    }

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //appBar: appBar(),
      //drawer: drawer(height,width),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        controller: textController,
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
                          child:
                          Text('$_contador') //displayText.substring(0,2)),
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
              SizedBox(
                height: height * 0.8,
                child: ListView(
                  children: [
                    Text('data'),
                    for (var i = 0; i < 100; i++) Text('teste $i'),
                  ],
                ),
              )
              */
/*SizedBox(
                height: height * 0.8,
                child: ListView(
                  children: [
                    Text('data'),
                    for (var i = 0; i < 100; i++) Text('teste $i'),
                  ],
                ),
              )*//*

            ],
          ),
        ),
      ),
    );
  }

  drawer(double h, double w) {
    return Drawer(
      width: w / 4,
      child: ListView(
        children: [
          SizedBox(
            height: h / 8,
            child: DrawerHeader(
              margin: const EdgeInsets.only(bottom: 0),
              padding: EdgeInsets.zero,
              child: Text('teste'),
              decoration: BoxDecoration(color: Colors.grey),
            ),
          ),
          lista('data'),
          for (var i = 0; i < 19; i++) lista('teste $i'),
        ],
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

  appBar() {
    return AppBar(
      centerTitle: true,
      title: Text('contador'),
    );
  }

  lista(
      String data,
      ) {
    return ListTile(
      title: Text(data),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
*/
