import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: cuerpo(),
    );
  }

  Widget cuerpo() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://www.google.com/search?q=imagen+de+fondo+login+de+psicologia&sca_esv=16dc853573b34c8f&sca_upv=1&tbm=isch&sxsrf=AM9HkKnfPl02ztLvv76E-7I8g1UcV45g5w:1700526559341&source=lnms&sa=X&ved=2ahUKEwjDnICM69OCAxUlroQIHf22C00Q_AUoAXoECAIQAw&biw=1366&bih=643&dpr=1#imgrc=35-worDHBpPYaM"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(),
            campoUsuario(),
            campoPassword(),
            botonEntrar()
          ],
        ),
      ),
    );
  }

  Widget nombre() {
    return Text("Sing in",
        style: TextStyle(
            color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold));
  }

  Widget campoUsuario() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          decoration: InputDecoration(
              hintText: "User", fillColor: Colors.white, filled: true),
        ));
  }

  Widget campoPassword() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Pass", fillColor: Colors.white, filled: true),
        ));
  }

  Widget botonEntrar() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        padding: const EdgeInsets.all(16.0),
        textStyle: const TextStyle(fontSize: 20),
      ),
      child: Text("Entrar"),
    );
  }
}
