import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
      ),
      body: cuerpo(),
    );
  }

  Widget cuerpo() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/7d/9b/72/7d9b72f9e76771ed15469cf3770900df.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(),
            campoNombres(),
            campoApellidos(),
            campoCorreo(),
            campoPassword(),
            botonEntrar()
          ],
        ),
      ),
    );
  }

  Widget nombre() {
    return Text("Registro",
        style: TextStyle(
            color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold));
  }

  Widget campoNombres() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Nombres", fillColor: const Color.fromARGB(255, 238, 245, 238), filled: true),
        ));
  }

  Widget campoCorreo() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Correo", fillColor: const Color.fromARGB(255, 251, 252, 251), filled: true),
        ));
  }

  Widget campoApellidos() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Apellidos", fillColor: Colors.white, filled: true),
        ));
  }

  Widget campoPassword() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Contraseña", fillColor: Colors.white, filled: true),
        ));
  }

  Widget botonEntrar() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 20, 0, 150),
        padding: const EdgeInsets.all(16.0),
        textStyle: const TextStyle(fontSize: 20),
      ),
      child: Text("Ingresar"),
    );
  }
}
