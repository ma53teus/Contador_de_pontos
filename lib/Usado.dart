/*

Container(
  width: width * 0.25,
  child: TextField(
    maxLines: 1,
    controller: textController,
    decoration: InputDecoration(
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25)),
                            ),
                          ),
                        ),


Container(
                height: 12,
                width: width,
                child: Row(
                  children: [
                    // Icon(Icons.account_balance_wallet),
                    TextFormField(),
                  ],
                ),
              ),


ElevatedButton(
onPressed: () {},
child: Icon(
Icons.confirmation_num_sharp,
color: Colors.black,
size: 20,
),
style: ElevatedButton.styleFrom(
shape: CircleBorder(),
//padding: EdgeInsets.all(12)
),
),


IconButton(
onPressed: () {
mudando();
},
icon: Icon(Icons.add)),
FloatingActionButton(
onPressed: () {
mudando();
},
child: Icon(Icons.remove),
),

ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.confirmation_num_sharp,
                        color: Colors.black,
                        size: 20,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        //padding: EdgeInsets.all(12)
                      ),
                    ),




*/

/*
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
*/