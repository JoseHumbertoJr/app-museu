import 'package:flutter/foundation.dart';

class Visitant {
  final String nome;
  final String phone;
  final String cep;
  final String adress;
  final String locale;
  final String complement;
  final String user;
  final String password;

  Visitant({
    @required this.nome,
    @required this.phone,
    @required this.cep,
    @required this.adress,
    @required this.locale,
    @required this.complement,
    @required this.user,
    @required this.password,
  });

  factory Visitant.fromJson(Map<String, dynamic> json) {
    return Visitant(
      nome: json['nome'] as String,
      phone: json['phone'] as String,
      cep: json['cep'] as String,
      adress: json['adress'] as String,
      locale: json['locale'] as String,
      complement: json['complement'] as String,
      user: json['user'] as String,
      password: json['password'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'nome': this.nome,
        'phone': this.phone,
        'cep': this.cep,
        'adress': this.adress,
        'locale': this.locale,
        'complement': this.complement,
        'user': this.user,
        'password': this.password,
      };
}
