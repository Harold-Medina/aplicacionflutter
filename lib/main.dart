import 'package:app1/pantallas/pantalla_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppdClase',
      theme: ThemeData(

        primarySwatch: Colors.lime,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('AppDIY'),
      ),
      body: ListView(
        children: [
          Text('Hola mis queridos saltamontes', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple),),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(20.0),
            child: Text('Hola mis queridos saltamontes', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.deepPurple),),
    ),
      Container(
        color: Colors.red,
        padding: EdgeInsets.all(20.0),
        child: Image.network('https://itkv.tmgrup.com.tr/2012/04/16/Haber/830952108681.jpg', scale: 2.0)
      ),
          ElevatedButton(
            onPressed: (){
              var saludo="Saludo efectuado";
              print(saludo);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>pantalla_2()));
            },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Siguiente'),
                  Icon(Icons.arrow_forward),
                ],
              ),
          )
        ],
      ),
    );
  }
}
