import 'package:flutter/material.dart';

class pantalla_2 extends StatelessWidget {
  const pantalla_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla #2"),
      ),
      body: PageView(
        children:[
          principal(),
          imagen(url: 'http://www.pequelandia.org/mafalda/personajes/frasemafy1b.gif'),
          imagen(url:'http://www.pequelandia.org/mafalda/personajes/cfelipe.gif'),
          imagen(url:'http://www.pequelandia.org/mafalda/personajes/csusanita.gif'),
        ],
      ),
      bottomNavigationBar: barraInferior(),
    );
  }
}

class principal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("esta es la pantalla 2"),
        ),
        ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Anterior'),
              Icon(Icons.arrow_back),
            ],
          ),
        )
      ],
    );
  }
}

class barraInferior extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.blueAccent,
        onTap: (index){
          if(index==0){
            Navigator.pop(context);
          }else if (index==1){
            var t = DateTime.now();
            print(t);}else if (index==2){print ("Va a pantalla 3");}
        },
        items:  [
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_back),
              label: "Anterior"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: "Hoy"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_forward),
              label: "Siguiente"
          ),
        ],
      );
  }
}

class imagen extends StatelessWidget {
  final String url;
  const imagen({required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blueAccent,
      child: Image.network(url)
    );
  }
}
