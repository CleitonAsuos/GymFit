import 'package:flutter/material.dart';

class RecuperarSenha extends StatelessWidget {
RecuperarSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () =>
            Navigator.pop(context, false),
            ),
        title: Text("Recuperar Senha"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),

        ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo,Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(children: <Widget>[
          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset("assets/images/key.png"),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Esqueceu sua senha?",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.justify,
            "Por favor, informe o e-mail associado a sua conta que enviaremos um link com as instruções para recuperação de senha.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
            ),
          decoration: InputDecoration(
            labelText: "E-mail",
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.grey, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: SizedBox.expand(
              child: TextButton(
                child: Text(
                  "Enviar",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {},
              ),
            ),
          ),
        ],
        
        ),
      ),

    );
  }
}