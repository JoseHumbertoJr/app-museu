import 'package:flutter/material.dart';

class CreeatAccount extends StatelessWidget {
  static String tag = 'create-account-page';

  @override
  Widget build(BuildContext context) {
    final TextEditingController _cNome = TextEditingController();
    final TextEditingController _cPhone = TextEditingController();
    final TextEditingController _cCep = TextEditingController();
    final TextEditingController _cAdress = TextEditingController();
    final TextEditingController _cLocale = TextEditingController();
    final TextEditingController _cComplement = TextEditingController();
    final TextEditingController _cUser = TextEditingController();
    final TextEditingController _cPassword = TextEditingController();
    final TextEditingController _cConfirmPassword = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            color: const Color(0xffFFA751),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255, 167, 81, 1),
                  Color.fromRGBO(255, 233, 174, 1)
                ]),
            image: DecorationImage(
                image: AssetImage('assets/img/tela3.png'),
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.23), BlendMode.dstATop),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.0),
              children: <Widget>[
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(children: <Widget>[
                      TextField(
                        controller: _cNome,
                        decoration: InputDecoration(
                          labelText: "Nome",
                        ),
                      ),
                      TextField(
                        controller: _cPhone,
                        decoration: InputDecoration(
                          labelText: "Telefone",
                        ),
                      ),
                      TextField(
                        controller: _cCep,
                        decoration: InputDecoration(
                          labelText: "CEP",
                        ),
                      ),
                      TextField(
                        controller: _cAdress,
                        decoration: InputDecoration(
                          labelText: "Endereço (Rua e numero)",
                        ),
                      ),
                      TextField(
                        controller: _cLocale,
                        decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.person),
                          labelText: "Bairro",
                        ),
                      ),
                      TextField(
                        controller: _cComplement,
                        decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.person),
                          labelText: "Complemento",
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        controller: _cUser,
                        decoration: InputDecoration(
                          //prefixIcon: Icon(Icons.person_add),
                          labelText: "Usuário",
                        ),
                      ),
                      TextField(
                        controller: _cPassword,
                        decoration: InputDecoration(
                          //prefixIcon: Icon(Icons.lock),
                          labelText: "Senha",
                        ),
                      ),
                      TextField(
                        controller: _cConfirmPassword,
                        decoration: InputDecoration(
                          //prefixIcon: Icon(Icons.lock),
                          labelText: "Confirma Senha",
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(50.0),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: 150.0,
                          height: 50.0,
                          child: Text(
                            "Cadastrar",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
