
import 'package:integradoraproyect/db/mongodb.dart';
import 'package:integradoraproyect/model/recados.dart';
import 'package:integradoraproyect/model/user.dart';
import 'package:flutter/material.dart';
var user = 'kev';
var password = 'pppp';
var email = 'lep';
var title = 'hlelele';
var description = 'Como estas';
var date = DateTime.now();

class Prueba extends StatefulWidget {
  Prueba({Key? key}) : super(key: key);

  @override
  State<Prueba> createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            FloatingActionButton(onPressed: () {
              Usuario newusuario = Usuario(user: user, password: password, email: email);
              Recados newrecado = Recados(title: title, description: description, date: date);
              //MongoDatabase.insertaruser(newusuario);
              MongoDatabase.actualizar(newusuario, newrecado);
            },
            )
          ],
        ),
      ),
    );
  }
}
